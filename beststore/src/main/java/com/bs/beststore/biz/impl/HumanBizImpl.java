package com.bs.beststore.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.dao.HumanMapper;
import com.bs.beststore.vo.Human;

@Service
public class HumanBizImpl implements HumanBiz {

	@Autowired
	private HumanMapper humanMapper;
	
	@Override
	public List<Human> findAll() {
		return humanMapper.selectByExample(null);
	}

	@Override
	public int add(Human human) {
		return humanMapper.insertSelective(human);
	}
	
}
