package com.bs.beststore.biz.impl;

import java.text.DecimalFormat;
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

	@Override
	public List<Map<String, Object>> findInfoByGid(int gid) {
		return discussMapper.findInfoByGid(gid);
	}

	@Override
	public int getCountByGid(int gid) {
		String num = discussMapper.getCount(gid).get(0).get("count") + "";
		return Integer.parseInt(num);
	}

	@Override
	public String getGoodByGid(int gid) {
		// 获取好评数
		String num = discussMapper.getGood(gid).get(0).get("count") + "";
		int count = Integer.parseInt(num);
		DecimalFormat df = new DecimalFormat("0.0000");
		int count1 = getCountByGid(gid);
		if (count1==0) {
			return "暂无评价";
		} else {
			String number = df.format(count/count1);
			double d = Double.parseDouble(number) * 100;
			return d + "%";
		}
	}

	@Override
	public List<Map<String, Object>> findByOdid(int odid) {
		List<Map<String, Object>> list = discussMapper.findByOdid(odid);
		return list;
	}

}
