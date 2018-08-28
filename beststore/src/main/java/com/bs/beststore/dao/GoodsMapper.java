package com.bs.beststore.dao;

import com.bs.beststore.vo.Goods;
import com.bs.beststore.vo.GoodsExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface GoodsMapper {
	
	@Insert("insert into goods values(null,#{gname},#{glastprice},#{gnowprice},#{gdesc},10,current_timestamp(6),#{gnumber},#{gphotopic},#{tid},#{sid},0);")
	int insertGoods(Goods record);
	
	@Update("update goods set gname=#{gname},glastprice=#{glastprice},gnowprice=#{gnowprice},gnumber=#{gnumber},tid=#{tid},gdesc=#{gdesc},gphotopic=#{gphotopic} where gid=#{gid}")
	int updateGoods(Goods record);
	
	@Update("update goods set gstatus=#{gstatus} where gid=#{gid}")
	int updateGoodGstatus(Goods record);

	// 商品id
	@Select("select g.*,t.TPARENTID,t.TPRINAME from goods g" + " left join type t on g.tid=t.tid "
			+ "where g.gid=#{gid};")
	List<Map<String, Object>> findByGid(@Param("gid") int gid);

	// 商品类型id
	@Select("select g.*,t.TPARENTID,t.TPRINAME from goods g"+ " left join type t on g.tid=t.tid " + "where t.tid=#{tid};")
	List<Map<String, Object>> findByTid(@Param("tid") int tid);

	// 店铺id
	@Select("select g.gid,g.gname,g.gphotopic,g.glastprice,g.gnowprice,g.gstatus,g.gnumber,t.tpriname,g.grade,g.gpublish,g.gdesc from goods g"+ " left join type t on g.tid=t.tid "
			+ "where g.sid=#{sid} limit #{page},#{rows};")
	List<Map<String, Object>> findBySid(@Param("sid") int sid,@Param("page")int page,@Param("rows")int rows);

	@Select("select count(*) from goods g"+ " left join type t on g.tid=t.tid "
			+ "where g.sid=#{sid};")
	long findBySidCount(@Param("sid") int sid);
	
	// 商品状态
	@Select("select g.gid,g.gname,g.gphotopic,g.glastprice,g.gnowprice,g.gstatus,g.gnumber,t.tpriname,g.grade,g.gpublish,g.gdesc from goods g " + "left join type t on g.tid=t.tid "
			+ "where g.gstatus=#{gstatus} and g.sid=#{sid} limit #{page},#{rows};")
	List<Map<String, Object>> findByGstatus(@Param("gstatus") int gstatus,@Param("sid") int sid,@Param("page")int page,@Param("rows")int rows);

	// 模糊查询示例
	// @Select("SELECT * FROM shop WHERE shop.name_text LIKE CONCAT('%',#{0},'%') ")
	// public List<Shop> selectByName(String name_text);

	// 按商品名模糊查找
	@Select("select * from goods g" + "left join photo p on g.gid=p.gid " + "left join type t on g.tid=t.tid "
			+ "where g.gname like concat('%',#{gname},'%');")
	List<Map<String, Object>> findByGname(@Param("gname") String key);

	// 按商品描述模糊查找
	@Select("select * from goods g on a.gid=b.gid " + "left join photo p on g.gid=p.gid "
			+ "left join type t on g.tid=t.tid " + "where g.gdesc like concat('%',#{gdesc},'%');")
	List<Map<String, Object>> findByGdesc(@Param("gdesc") String gdesc);

	// 按商品名以及价格区间查找
	@Select("select * from goods g on a.gid=b.gid " + "left join photo p on g.gid=p.gid "
			+ "left join type t on g.tid=t.tid "
			+ "where g.gname like concat('%',#{likeName},'%') and gnowprice >= #{minPrice} and gnowprice <= #{maxPrice};")
	List<Map<String, Object>> findByPrice(@Param("likeName") String likeName, @Param("minPrice") Double minPrice,
			@Param("maxPrice") Double maxPrice);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	long countByExample(GoodsExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int deleteByExample(GoodsExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int deleteByPrimaryKey(Integer gid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int insert(Goods record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int insertSelective(Goods record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	List<Goods> selectByExample(GoodsExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	Goods selectByPrimaryKey(Integer gid);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int updateByExampleSelective(@Param("record") Goods record, @Param("example") GoodsExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int updateByExample(@Param("record") Goods record, @Param("example") GoodsExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int updateByPrimaryKeySelective(Goods record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to
	 * the database table goods
	 *
	 * @mbg.generated Fri Aug 24 11:17:55 CST 2018
	 */
	int updateByPrimaryKey(Goods record);
}