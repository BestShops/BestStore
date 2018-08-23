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
	public Human login(Human human) {
		// 将密码修改为MD5(用户名+密码)
		human.setHpwd(MD5Util.MD5(human.getHname() + human.getHpwd()));
		
		// 添加查询条件
		HumanExample humanExample = new HumanExample();
		Criteria criteria = humanExample.createCriteria();
		criteria.andHnameEqualTo(human.getHname());
		criteria.andHpwdEqualTo(human.getHpwd());
		
		return humanMapper.selectByExample(humanExample).get(0);
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
	
}
