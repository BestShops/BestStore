package com.bs.beststore.biz;

import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.Photo;

public interface PhotoBiz {
	
	/**
	 * 给商品添加图片
	 * @param goods	根据商品id进行添加
	 * @param photo	数量，尺码，颜色，图片路径(一种颜色一个尺码是一条数据)
	 * @return
	 */
	int addPhotoByGoods(Goods goods,Photo photo);
	
	
	
	
}
