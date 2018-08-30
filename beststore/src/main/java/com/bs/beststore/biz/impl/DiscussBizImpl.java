package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.DiscussBiz;
import com.bs.beststore.dao.DiscussMapper;
import com.bs.beststore.vo.Discuss;

@Service
public class DiscussBizImpl implements DiscussBiz {
	
	@Autowired
	private DiscussMapper discussMapper;

	@Override
	public int addDiscuss(Discuss discuss) {
		discuss.setDstatus(1);
		return discussMapper.insertSelective(discuss);
	}

	@Override
	public int modifyDiscuss(Discuss discuss) {
		return discussMapper.updateByPrimaryKeySelective(discuss);
	}

	@Override
	public int removeDicuss(Discuss discuss) {
		discuss.setDstatus(0);
		return discussMapper.updateByPrimaryKeySelective(discuss);
	}

	@Override
	public List<Map<String, Object>> findAll(int gid) {
		return discussMapper.findByGid(gid);
	}

	@Override
	public Discuss findByDid(int did) {
		return discussMapper.selectByPrimaryKey(did);
	}

}
