package com.bs.beststore.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.dao.HumanMapper;
import com.bs.beststore.util.MD5Util;
import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.HumanExample;
import com.bs.beststore.vo.HumanExample.Criteria;

@Service
/**
 * 还没对此方式进行修改，睡觉了，明天晚上改！
 * @author pch
 *
 */
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
	public Human login(Human human) throws BizException {
		// 先判断用户名
		HumanExample humanExample = new HumanExample();
		Criteria criteria = humanExample.createCriteria();
		criteria.andHnameEqualTo(human.getHname());
		if (humanMapper.selectByExample(humanExample).size() == 0) {// 如果用户名不存在
			// 如果用户名不存在就判断输入的是否是号码
			HumanExample humanExample1 = new HumanExample();
			Criteria criteria1 = humanExample1.createCriteria();
			criteria1.andHphoneEqualTo(Long.parseLong(human.getHname()));
			List<Human> list1 = humanMapper.selectByExample(humanExample1);
			if (list1.size() == 1) {// 如果该号码存在
				human.setHname(list1.get(0).getHname());// 获取该号码对应的用户名
			} else {
				// 如果号码也不存在，就判断输入的是否是邮箱
				HumanExample humanExample2 = new HumanExample();
				Criteria criteria2 = humanExample2.createCriteria();
				criteria2.andHemailEqualTo(human.getHname());
				List<Human> list2 = humanMapper.selectByExample(humanExample2);
				if (list2.size() == 1) {// 如果该邮箱存在
					human.setHname(list2.get(0).getHname());// 获取该邮箱对应的用户名
				} else {// 如果邮箱、电话、用户名皆不存在，返回错误，提醒用户重新输入
					throw new BizException("账号不存在，请验证后重新输入");
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
			return list3.get(0);
		} else {// 用户名或密码错误
			throw new BizException("账号或密码错误，请验证后重新输入");
		}
	}

	@Override
	public int upload(Human human) {
		human.setHpwd(null);
		return humanMapper.updateByPrimaryKeySelective(human);
	}

	@Override
	public int changePwd(Human human, String oldPwd, String newPwd) throws BizException {
		if (!oldPwd.equals(newPwd)) {// 如果两次输入的密码不一致，再开始进行修改
			if (MD5Util.MD5(human.getHname() + oldPwd).equals(human.getHpwd())) {// 旧密码正确，验证是本人操作，予以修改密码
				Human h = new Human();
				h.setHid(human.getHid());
				h.setHpwd(MD5Util.MD5(human.getHname() + newPwd));
				return humanMapper.updateByPrimaryKeySelective(h);
			} else {
				throw new BizException("原密码输入错误，请重试");
			}
		} else {// 两次输入的密码一致，直接抛出异常
			throw new BizException("两次输入的密码相同，请验证后重新输入");
		}
	}

	@Override
	public int findPwd(Human human) {
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
	public List<Human> findByName(Human human) {
		// 通过验证后由用户名为查找条件，修改新密码
		HumanExample example = new HumanExample();
		Criteria criteria = example.createCriteria();
		criteria.andHnameEqualTo(human.getHname());
		return humanMapper.selectByExample(example);
	}
	
}
