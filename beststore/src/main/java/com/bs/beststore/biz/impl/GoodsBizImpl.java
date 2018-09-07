package com.bs.beststore.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bs.beststore.biz.GoodsBiz;
import com.bs.beststore.dao.GoodsMapper;
import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Type;

@Service
/**
 * 
 * 功能还没完善好，但大致功能已经实现，还没经过测试
 * 
 * @author pch
 *
 */
public class GoodsBizImpl implements GoodsBiz {

	@Autowired
	private GoodsMapper gm;

	@Override
	public int addGoods(Goods goods) {
		return gm.insertGoods(goods);
	}

	@Override
	public int modifyGoods(Goods goods) {
		// 可修改(商品名，原价，现价，描述，类别，商品状态)
		return gm.updateGoods(goods);
	}

	@Override
	public List<Map<String,Object>> findAll(Goods goods,int page,int rows) {
		// 可以根据商品id、商品类型、店铺id、商品状态
		List<Map<String,Object>> list = new ArrayList<Map<String, Object>>();
		if (goods != null) {
			// 获取商品id、商品类型、店铺id、商品状态，然后按条件查找，可多条件查找
			if (goods.getGid() != null) {
				list = gm.findByGid(goods.getGid());
			} else if (goods.getTid() != null) {
				list = gm.findByTid(goods.getTid());
			} else if (goods.getGstatus() != null && goods.getSid()!=null) {
				list = gm.findByGstatus(goods.getGstatus(),goods.getSid(),(page-1)*rows,rows);
			} else if (goods.getSid() != null) {
				if(page!=0 && rows!=0) {
					list = gm.findBySid(goods.getSid(),(page-1)*rows,rows);
				}
			} else if (goods.getGstatus() != null && goods.getSid()==null) {
				list = gm.findByExamine(goods.getGstatus(),(page-1)*rows,rows);
			}
			return list;
		} else {
			return null;
		}
	}
	
	@Override
	public long findAllTotal(Goods goods) {
		long count = 0;
		if(goods.getTid()!=null) {
			
		}else if(goods.getSid()!=null) {
			count=gm.findBySidCount(goods.getSid());
		}else if (goods.getGstatus() != null && goods.getSid()==null) {
			count=gm.findByExamineTotal(goods.getGstatus());
		}
		return count;
	}

	@Override
	public List<Map<String,Object>> findByKeyWord(String key) {
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		// 按名字模糊查找
		if(gm.findByGname(key) != null) {
			list.addAll(gm.findByGname(key));
		}
		if(gm.findByGdesc(key) != null) {
			list.addAll(gm.findByGdesc(key));
		}
		return list;
	}

	@Override
	public List<Map<String,Object>> findByPrice(String likeName, Double minPrice, Double maxPrice) {
		return gm.findByPrice(likeName, minPrice, maxPrice);
	}

	@Override
	public int updateGstatus(Goods goods) {
		return gm.updateGoodGstatus(goods);
	}

	@Override
	public Goods findByGid(int gid) {
		return gm.selectByPrimaryKey(gid);
	}

	@Override
	public List<Goods> findGoodsOrderByNum() {
		return gm.findByNum();
	}

	@Override
	public List<Map<String, Object>> findHotGoods() {
		return gm.findHotGoods();
	}

	@Override
	public List<Map<String, Object>> reduceHotGoods(int rows) {
		return gm.reduceHotGoods(rows);
	}

	@Override
	public List<Map<String, Object>> goodsQuery(Goods goods,Type type,int tid2,int price1,int price2,int page, int rows,int order) {
		List<Map<String, Object>> list = null;
		if(type.getTid()!=null && tid2==0 &&price1==0 &&price2==0 &&order==0){	//1
			list=gm.goodsQueryByTid((page-1)*rows, rows, Integer.valueOf(type.getTid()));
		}else if(type.getTid()!=null && tid2==0 &&price1==0 &&price2==0 &&order==1){
			list=gm.goodsQueryByTidOrder((page-1)*rows, rows, Integer.valueOf(type.getTid()));
		}else if(type.getTid()!=null && tid2==0 &&price1==0 &&price2==0 &&order==2){
			list=gm.goodsQueryByTidprice((page-1)*rows, rows, Integer.valueOf(type.getTid()));
		}else if(type.getTid()!=null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==0){	//2
			list=gm.goodsQueryByTidAndPrice((page-1)*rows, rows, Integer.valueOf(type.getTid()),price1,price2);
		}else if(type.getTid()!=null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==1){	//2
			list=gm.goodsQueryByTidAndPriceOrder((page-1)*rows, rows, Integer.valueOf(type.getTid()),price1,price2);
		}else if(type.getTid()!=null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==2){	//2
			list=gm.goodsQueryByTidAndPriceAsc((page-1)*rows, rows, Integer.valueOf(type.getTid()),price1,price2);
		}else if(type.getTid()!=null && tid2==0 && price1!=0 && price2==0 &&order==0){	//3
			list=gm.goodsQueryByTidAndPrice1((page-1)*rows, rows, Integer.valueOf(type.getTid()),price1);
		}else if(type.getTid()!=null && tid2==0 && price1!=0 && price2==0 &&order==1){	//3
			list=gm.goodsQueryByTidAndPrice1Order((page-1)*rows, rows, Integer.valueOf(type.getTid()),price1);
		}else if(type.getTid()!=null && tid2==0 && price1!=0 && price2==0 &&order==2){	//3
			list=gm.goodsQueryByTidAndPrice1Asc((page-1)*rows, rows, Integer.valueOf(type.getTid()),price1);
		}else if(type.getTid()!=null && tid2!=0 &&price1==0 &&price2==0 &&order==0){	//4
			list=gm.goodsQueryByTid1((page-1)*rows, rows, tid2);
		}else if(type.getTid()!=null && tid2!=0 &&price1==0 &&price2==0 &&order==1){	//4
			list=gm.goodsQueryByTid1Order((page-1)*rows, rows, tid2);
		}else if(type.getTid()!=null && tid2!=0 &&price1==0 &&price2==0 &&order==2){	//4
			list=gm.goodsQueryByTid1Asc((page-1)*rows, rows, tid2);
		}else if(type.getTid()!=null && tid2!=0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==0){	//5
			list=gm.goodsQueryByTid1AndPrice1((page-1)*rows, rows, tid2,price1,price2);   
		}else if(type.getTid()!=null && tid2!=0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==1){	//5
			list=gm.goodsQueryByTid1AndPrice1Order((page-1)*rows, rows, tid2,price1,price2);   
		}else if(type.getTid()!=null && tid2!=0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==2){	//5
			list=gm.goodsQueryByTid1AndPrice1Asc((page-1)*rows, rows, tid2,price1,price2);   
		}else if(type.getTid()!=null && tid2!=0 && price1!=0 && price2==0 &&order==0){	//6
			list=gm.goodsQueryByTid1AndPrice2((page-1)*rows, rows, tid2,price1);   
		}else if(type.getTid()!=null && tid2!=0 && price1!=0 && price2==0 &&order==1){	//6
			list=gm.goodsQueryByTid1AndPrice2Order((page-1)*rows, rows, tid2,price1);   
		}else if(type.getTid()!=null && tid2!=0 && price1!=0 && price2==0 &&order==2){	//6
			list=gm.goodsQueryByTid1AndPrice2Asc((page-1)*rows, rows, tid2,price1);   
		}else if(type.getTid()==null && tid2==0 && price1==0 && price2==0 &&order==0){	//7
			list=gm.goodsQuery((page-1)*rows, rows);
		}else if(type.getTid()==null && tid2==0 && price1==0 && price2==0 &&order==1){	//7
			list=gm.goodsQueryOrder((page-1)*rows, rows);
		}else if(type.getTid()==null && tid2==0 && price1==0 && price2==0 &&order==2){	//7
			list=gm.goodsQueryAsc((page-1)*rows, rows);
		}else if(type.getTid()==null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==0){	//8
			list=gm.goodsQuery1((page-1)*rows, rows,price1,price2);
		}else if(type.getTid()==null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==1){	//8
			list=gm.goodsQuery1Order((page-1)*rows, rows,price1,price2);
		}else if(type.getTid()==null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0)) &&order==2){	//8
			list=gm.goodsQuery1Asc((page-1)*rows, rows,price1,price2);
		}else if(type.getTid()==null && tid2==0 && price1!=0 && price2==0 &&order==0){
			list=gm.goodsQuery2((page-1)*rows, rows,price1);
		}else if(type.getTid()==null && tid2==0 && price1!=0 && price2==0 &&order==1){
			list=gm.goodsQuery2Order((page-1)*rows, rows,price1);
		}else if(type.getTid()==null && tid2==0 && price1!=0 && price2==0 &&order==2){
			list=gm.goodsQuery2Asc((page-1)*rows, rows,price1);
		}if(goods.getGname()!=null && !goods.getGname().equals("")) {
			if(goods.getGname().length()<=1) {
				list=gm.goodsQueryByGname((page-1)*rows, rows, goods.getGname().substring(0, 1));
			}else if(goods.getGname().length()>=2) {
				list=gm.goodsQueryByGname1((page-1)*rows, rows,goods.getGname().substring(0, 1),goods.getGname().substring(1,2));
			}
		}else if(goods.getGname()==null) {
			list=gm.goodsQueryAll((page-1)*rows, rows);
		} 
		return list;
	}

	@Override
	public long goodsCountByGoods(Goods goods,Type type,int tid2,int price1,int price2) {
		long count = 0;
		if(type.getTid()!=null && tid2==0 &&price1==0 &&price2==0){
			count=gm.goodsQueryByTidCount(Integer.valueOf(type.getTid()));
		}else if(type.getTid()!=null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0))){
			count=gm.goodsQueryByTidAndPriceCount(Integer.valueOf((type.getTid()+"").trim()),price1,price2);
		}else if(type.getTid()!=null && tid2==0 && price1!=0 && price2==0){
			count=gm.goodsQueryByTidPriceCount1(Integer.valueOf(type.getTid()),price1);
		}else if(type.getTid()!=null && tid2!=0 &&price1==0 &&price2==0){
			count=gm.goodsQueryByTidCount1(tid2);
		}else if(type.getTid()!=null && tid2!=0 && price1!=0 && price2!=0){
			count=gm.goodsQueryByTidAndPriceCount1(tid2, price1, price2);
		}else if(type.getTid()!=null && tid2!=0 && price1!=0 && price2==0){
			count=gm.goodsByTidAndPriceCount1(tid2,price1);   
		}else if(type.getTid()==null && tid2==0 && price1==0 && price2==0){
			count=gm.findByExamineTotal(1);
		}else if(type.getTid()==null && tid2==0 && ((price1!=0 && price2!=0)||(price1==0 && price2!=0))){
			count=gm.goodsQueryTotal1(price1,price2);
		}else if(type.getTid()==null && tid2==0 && price1!=0 && price2==0){
			count=gm.goodsQueryTotal2(price1);
		}else if(goods.getGname()!=null && !goods.getGname().equals("")) {
			if(goods.getGname().length()<=1) {
				count=gm.goodsQueryByGnameTotal(goods.getGname().substring(0, 1));
			}else if(goods.getGname().length()>=2) {
				count=gm.goodsQueryByGnameTotal1(goods.getGname().substring(0, 1),goods.getGname().substring(1,2));
			}
		}else if(goods.getGname()==null) {
			count=gm.goodsQueryAll1();
		} 
		return count;
	}

	@Override
	public int updateGoodNum(int num, int gid) {
		return gm.updateGoodNum(num, gid);
	}

	@Override
	public List<Map<String, Object>> findBySid(int sid, int page, int rows) {
		return gm.findBySid(sid, page, rows);
	}

	
}
