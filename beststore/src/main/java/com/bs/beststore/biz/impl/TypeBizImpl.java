package com.bs.beststore.biz.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.TypeBiz;
import com.bs.beststore.dao.GoodsMapper;
import com.bs.beststore.dao.TypeMapper;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.GoodsExample;
import com.bs.beststore.vo.Type;
import com.bs.beststore.vo.TypeExample;
import com.bs.beststore.vo.TypeExample.Criteria;

@Service
public class TypeBizImpl implements TypeBiz {

	@Autowired
	private TypeMapper typeMapper;

	@Autowired
	private GoodsMapper goodsMapper;

	@Override
	public int addType(Type type) throws BizException {
		if (type.getTpriname() != null) {
			return typeMapper.insertSelective(type);
		} else {
			throw new BizException("主类别不能为空");
		}
	}

	@Override
	public int removeType(Type type) throws BizException {
		int tid = type.getTid();
		boolean index = checkBiTid(tid);
		boolean index2 = checkType(tid);
		if (index) {
			if(index2) {
				return typeMapper.deleteByPrimaryKey(tid);
			}
			return -1;
		} else {
			return -2;
		}
	}

	@Override
	public int modifyType(Type type) throws BizException {
//		String tpriname = type.getTpriname();
//		if (tpriname != null && tsecname != null && tpriname.equals(tsecname)) {
//			throw new BizException("主类型名不能和父类型名一致");
//		}
//		// 主类别不为空，就对主类别进行判断，防止类别名冲突
//		if (tpriname != null) {
//			List<Type> list = typeMapper.findByName(tpriname);
//			if (list != null && list.size() != 0) {
//				throw new BizException("该类型名已经存在，请输入新的主类别");
//			}
//		}
//		// 副类别不为空，就对副类别进行判断，防止类别名冲突
//		if (tsecname != null) {
//			List<Type> list = typeMapper.findByName(tsecname);
//			if (list != null && list.size() != 0) {
//				throw new BizException("该类型名已经存在，请输入新的副类别");
//			}
//		}
		// 两个类型名都不存在冲突的情况下，根据id修改
		return typeMapper.updateByPrimaryKeySelective(type);
	}
	
	/**
	 * 根据tid查看类别中是否包含值
	 * @param tid
	 * @return
	 */
	private boolean checkBiTid(int tid) {
		// 查看类别中是否包含有商品
		GoodsExample goodsExample = new GoodsExample();
		com.bs.beststore.vo.GoodsExample.Criteria criteria = goodsExample.createCriteria();
		criteria.andTidEqualTo(tid);
		List<Goods> list = goodsMapper.selectByExample(goodsExample);
		if (list == null || list.size() == 0) {
			return true;
		}
		return false;
	}
	
	/**
	 * 查询以tid为父类别的类别(即查询该类别下是否有类别)
	 * @param tid
	 * @return
	 */
	private boolean checkType(int tid) {
		List<String> list = typeMapper.selectByTparentid(tid);
		if(list == null || list.size() == 0) {
			return true;
		}
		return false;
	}

	@Override
	public Type findByTid(int tid) {
		return typeMapper.selectByPrimaryKey(tid);
	}

	@Override
	public List<Map<String, Object>> findAllType() {
		return typeMapper.selectAllType();
	}

	@Override
	public List<Map<String, Object>> selectSonInfoByParent() {
		List<Map<String,Object>> list=typeMapper.selectAllType();
		return list;
	}

	@Override
	public List<Type> selectFirstInfo() {
		TypeExample typeExample=new TypeExample();
		Criteria typeCriteria=typeExample.createCriteria();
		typeCriteria.andTparentidIsNull();
		return typeMapper.selectByExample(typeExample);
	}

	@Override
	public List<Map<String,Object>> selectSecondInfo(int tid) {
		return typeMapper.selectSecondType(tid);
	}

	@Override
	public List<Map<String,Object>> selectThirdInfo(int tid) {
		return typeMapper.selectThirdType(tid);
	}

	@Override
	public List<Type> findTidByTname(String tpriname) {
		TypeExample typeExample=new TypeExample();
		Criteria typeCriteria=typeExample.createCriteria();
		typeCriteria.andTprinameEqualTo(tpriname);
		return typeMapper.selectByExample(typeExample);
	}

	@Override
	public List<Map<String, Object>> findTypeToIndex(int tid) {
		return typeMapper.selectTypeToIndex(tid);
	}
	
}
