package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Human;

public interface HumanBiz {
	
	List<Human> findAll();
	
	int add(Human human);

}
