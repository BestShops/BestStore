package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.dao.HumanMapper;
import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.MD5Util;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.HumanExample;
import com.bs.beststore.vo.HumanExample.Criteria;

@Service
public class HumanBizImpl implements HumanBiz {

	@Autowired
	private HumanMapper humanMapper;

	@Override
	public List<Human> findAll() {
		return humanMapper.selectByExample(null);
	}

	@Override
	public int register(Human human) {
		// 将密码修改为MD5(用户名+密码)
		human.setHpwd(MD5Util.MD5(human.getHname() + human.getHpwd()));
		return humanMapper.insertSelective(human);
	}

	@Override
	public Human login(Human human, int status) throws BizException {
		// 先判断用户名
		HumanExample humanExample = new HumanExample();
		Criteria criteria = humanExample.createCriteria();
		criteria.andHnameEqualTo(human.getHname());
		if (humanMapper.selectByExample(humanExample).size() == 0) {// 如果用户名不存在
			// 如果用户名不存在就判断输入的是否是邮箱
			String RULE_EMAIL = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
			// 邮箱匹配成功，就获取到用户名
			if (matches(human.getHname(),RULE_EMAIL)) {
				HumanExample humanExample1 = new HumanExample();
				Criteria criteria1 = humanExample1.createCriteria();
				criteria1.andHemailEqualTo(human.getHname());
				List<Human> list1 = humanMapper.selectByExample(humanExample1);
				if (list1.size() == 1) {// 如果该号码存在
					human.setHname(list1.get(0).getHname());// 获取该号码对应的用户名
				} else {
					// 邮箱匹配失败，则表示用户名输入错误
					throw new BizException("邮箱输入错误<br>请验证后重新输入");
				}
			} else {
				// 如果号码也不存在，就判断输入的是否是号码
				String RULE_EMAIL1 = "^[1][3-9][0-9]{9}$";
				if (matches(human.getHname(), RULE_EMAIL1)) {
					HumanExample humanExample2 = new HumanExample();
					Criteria criteria2 = humanExample2.createCriteria();
					criteria2.andHphoneEqualTo(Long.parseLong(human.getHname()));
					List<Human> list2 = humanMapper.selectByExample(humanExample2);
					if (list2.size() == 1) {// 如果该邮箱存在
						human.setHname(list2.get(0).getHname());// 获取该邮箱对应的用户名
					} else {
						// 如果邮箱、电话、用户名皆不存在，返回错误，提醒用户重新输入
						throw new BizException("手机号码输入错误<br>请验证后重新输入");
					}
				} else {
					// 电话匹配失败，则表示用户名输入错误
					throw new BizException("用户名输入错误<br>请验证后重新输入");
				}
			}
		}

		// 如果输入的账号存在，则用户名已经获取到了，开始判断密码是否正确
		HumanExample humanExample3 = new HumanExample();
		Criteria criteria3 = humanExample3.createCriteria();
		criteria3.andHnameEqualTo(human.getHname());
		System.out.println(MD5Util.MD5("root123"));
		criteria3.andHpwdEqualTo(MD5Util.MD5(human.getHname() + human.getHpwd()));// 密码是加密后存入数据库的，所以查询也要加密
		List<Human> list3 = humanMapper.selectByExample(humanExample3);
		if (list3.size() == 1) {// 用户名密码都正确，返回该用户的信息
			Human h = list3.get(0);
			if (h.getHlimit() >= status && h.getHlimit() < 2) {
				return h;
			} else {
				throw new BizException("账号或密码错误，请验证后重新输入");
			}
		} else {// 用户名或密码错误
			throw new BizException("账号或密码错误，请验证后重新输入");
		}
	}

	@Override
	public int upload(Human human) throws BizException {
		// 密码不允许修改
		human.setHpwd(null);
		// 用户名、身份证号、电话号码、邮箱地址不能为空
		if (human.getHname() == null || "".equals(human.getHname())) {
			throw new BizException("用户名不能为空");
		} else if (human.getHidcard() == null || human.getHidcard() == 0) {
			throw new BizException("身份证号不能为空");
		} else if (human.getHphone() == null || human.getHphone() == 0) {
			throw new BizException("电话号码不能为空");
		} else if (human.getHemail() == null || "".equals(human.getHemail())) {
			throw new BizException("邮箱地址不能为空");
		} else if (matches(human.getHidcard(), AccountValidatorUtil.REGEX_ID_CARD)) {
			throw new BizException("身份证号格式错误");
		} else if (matches(human.getHphone(), AccountValidatorUtil.REGEX_MOBILE)) {
			throw new BizException("电话号码格式错误");
		} else if (matches(human.getHemail(), AccountValidatorUtil.REGEX_EMAIL)) {
			throw new BizException("邮箱地址格式错误");
		}

		// 用户名、身份证号、电话号码、邮箱地址不能重复
		if (human.getHphoto() == null || "".equals(human.getHphoto())) {
			human.setHphoto(null);
		}
		// 除重
		List<Human> list = humanMapper.selectByExample(null);
		for (Human h : list) {
			// 该信息不能与其他用户的信息重复
			if (h.getHid() != human.getHid()) {
				if (human.getHname().equals(h.getHname())) {
					throw new BizException("用户名不能重复");
				} else if (human.getHidcard() == h.getHidcard()) {
					throw new BizException("身份证号不能重复");
				} else if (human.getHphone() == h.getHphone()) {
					throw new BizException("电话号码不能重复");
				} else if (human.getHemail() == h.getHemail()) {
					throw new BizException("邮箱地址不能重复");
				} 
			}
		}
		return humanMapper.updateByPrimaryKeySelective(human);
	}

	/**
	 * 正则表达式的判别式
	 * @param obj	验证的内容
	 * @param str	正则表达式
	 * @return
	 */
	private boolean matches(Object obj, String str) {
		// 正则表达式的模式
		Pattern p = Pattern.compile(str);
		// 正则表达式的匹配器
		Matcher m = p.matcher((CharSequence) obj);
		return m.matches();
	}

	@Override
	public int changePwd(Human human, String newPwd) throws BizException {
		if (!human.getHpwd().equals(MD5Util.MD5(human.getHname() + newPwd))) {// 如果两次输入的密码不一致，再开始进行修改
			Human h = new Human();
			h.setHid(human.getHid());
			h.setHpwd(MD5Util.MD5(human.getHname() + newPwd));
			return humanMapper.updateByPrimaryKeySelective(h);
		} else {// 两次输入的密码一致，直接抛出异常
			throw new BizException("新密码与旧密码相同，请验证后重新输入");
		}
	}

	@Override
	public int forgetPwd(Human human) {
		// 通过验证后由用户名为查找条件，修改新密码
		HumanExample example = new HumanExample();
		Criteria criteria = example.createCriteria();
		criteria.andHnameEqualTo(human.getHname());
		Human hm = new Human();
		hm.setHpwd(MD5Util.MD5(human.getHname() + human.getHpwd()));
		// 相当于：update human set password='xxx' where username='xxx'
		return humanMapper.updateByExampleSelective(hm, example);
	}

	@Override
	public List<Human> findByCondition(Human human) {
		// 通过验证后由用户名为查找条件，修改新密码
		HumanExample example = new HumanExample();
		Criteria criteria = example.createCriteria();
		if(human.getHname() != null) {
			criteria.andHnameEqualTo(human.getHname());
		} 
		if(human.getHemail() != null) {
			criteria.andHemailEqualTo(human.getHemail());
		} 
		if(human.getHphone() != null) {
			criteria.andHphoneEqualTo(human.getHphone());
		}
		return humanMapper.selectByExample(example);
	}

	@Override
	public Human findByHid(Human human) {
		return humanMapper.selectByPrimaryKey(human.getHid());
	}
}
