package com.bs.beststore.biz.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.util.MD5Util;
import com.bs.beststore.vo.Human;

public class HumanBizImplTest {
	ApplicationContext context= new ClassPathXmlApplicationContext("beans.xml");
	HumanBiz humanBiz = context.getBean(HumanBiz.class);

	@Test
	public void testAddHuman() {
		// 新增一个超级管理员
		Human human = new Human();
		human.setHname("root");
		human.setHpwd("123");
		human.setHpwd(MD5Util.MD5(human.getHname() + human.getHpwd()));
		human.setHsex(1);
		human.setHlimit(2);
		int index = humanBiz.add(human);
		System.out.println(index);
	}
	
	@Test
	public void testShowHuman() {
		// 查看用户信息
		List<Human> list = humanBiz.findAll();
		for (Human h : list) {
			System.out.println("用户名：" + h.getHname() + "\t密码：" + h.getHpwd());
		}
	}

}
