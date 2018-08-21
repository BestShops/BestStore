package com.bs.beststore.biz;

import java.util.List;
import java.util.Map;

import com.bs.beststore.vo.Discuss;

/**
 * 评论表
 */
public interface DiscussBiz {
	
	/**
	 * 用户添加一条评价信息
	 * @param discuss 等级必填，在js中做判断，商品id在jsp中引入，hid从session中获取，状态手动添加为1
	 * @return 返回修改的结果，1代表成功
	 */
	int addDiscuss(Discuss discuss);
	
	/**
	 * 修改评论信息
	 * @param discuss
	 * @return
	 */
	int modifyDiscuss(Discuss discuss);
	
	/**
	 * 根据did移除该评论，修改评论状态，改为0
	 * @param did
	 * @return
	 */
	int removeDicuss(Discuss discuss);
	
	/**
	 *  根据hid查找，用户查看我的评论，查看评论和商品的全部信息
	 * @return
	 */
	List<Map<String, Object>> findAll(int hid);
	
	/**
	 * 根据主键查找
	 * @param did
	 * @return
	 */
	Discuss findByDid(int did);
	
}
