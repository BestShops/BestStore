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
	
	@Update("update goods set gname=#{gname},glastprice=#{glastprice},gnowprice=#{gnowprice},gnumber=#{gnumber},tid=#{tid},gdesc=#{gdesc},gphotopic=#{gphotopic},gstatus=0 where gid=#{gid}")
	int updateGoods(Goods record);
	
	@Update("update goods set gstatus=#{gstatus} where gid=#{gid}")
	int updateGoodGstatus(Goods record);
	
	@Select("select a.gid,a.gphotopic,a.gnowprice from goods a\r\n" + 
			"left join ordersdetail b on a.gid=b.gid\r\n" + 
			"group by a.gid order by sum(b.num) desc limit 0,20")
	List<Goods> findByNum();

	// 商品id
	@Select("select a.*,b.sname,c.num,d.count,t1.TPRINAME from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid \r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and a.gid=#{gid}")
	List<Map<String, Object>> findByGid(@Param("gid") int gid);

	// 商品类型id
	@Select("select g.*,t.TPARENTID,t.TPRINAME from goods g"
			+ " left join type t on g.tid=t.tid " 
			+ "where t.tid=#{tid};")
	List<Map<String, Object>> findByTid(@Param("tid") int tid);

	// 店铺id
	@Select("select g.gid,g.gname,g.gphotopic,g.glastprice,g.gnowprice,g.gstatus,g.gnumber,t1.tid tid,t3.tpriname name1,"
			+ "t2.tpriname name2,t1.tpriname name3,concat(t3.tpriname,'-',t2.tpriname,'-',t1.tpriname) concatName,g.grade,g.gpublish,g.gdesc from goods g"+ " left join type t1 on g.tid=t1.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid "
			+ "where g.sid=#{sid} and t1.tparentid is not null and t2.tparentid is not null limit #{page},#{rows};")
	List<Map<String, Object>> findBySid(@Param("sid") int sid,@Param("page")int page,@Param("rows")int rows);

	@Select("select count(*) from goods g"+ " left join type t on g.tid=t.tid "
			+ "where g.sid=#{sid};")
	long findBySidCount(@Param("sid") int sid);
	
	// 商品状态
	@Select("select g.gid,g.gname,g.gphotopic,g.glastprice,g.gnowprice,g.gstatus,g.gnumber,t1.tid tid,t3.tpriname name1,"
			+ "t2.tpriname name2,t1.tpriname name3,concat(t3.tpriname,'-',t2.tpriname,'-',t1.tpriname) concatName,g.grade,g.gpublish,g.gdesc from goods g " + "left join type t1 on g.tid=t1.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid "
			+ "where g.gstatus=#{gstatus} and g.sid=#{sid} and t1.tparentid is not null and t2.tparentid is not null limit #{page},#{rows};")
	List<Map<String, Object>> findByGstatus(@Param("gstatus") int gstatus,@Param("sid") int sid,@Param("page")int page,@Param("rows")int rows);

	//商品审核
	@Select("select sname,gid,gname,gphotopic,gpublish,gdesc from store s left join goods g on s.sid=g.sid where gstatus=#{gstatus} and s.sstatus=1 limit #{page},#{rows};")
	List<Map<String, Object>> findByExamine(@Param("gstatus") int gstatus,@Param("page")int page,@Param("rows")int rows);

	//审核中的商品数量
	@Select("select count(*) from store s left join goods g on s.sid=g.sid where gstatus=#{gstatus} and s.sstatus=1")
	long findByExamineTotal(@Param("gstatus") int gstatus);

	
	// 模糊查询示例
	// @Select("SELECT * FROM shop WHERE shop.name_text LIKE CONCAT('%',#{0},'%') ")
	// public List<Shop> selectByName(String name_text);

	// 按商品名模糊查找
	@Select("select * from goods g " 
			+ "left join type t on g.tid=t.tid "
			+ "where g.gname like concat('%',#{gname},'%');")
	List<Map<String, Object>> findByGname(@Param("gname") String key);

	// 按商品描述模糊查找
	@Select("select * from goods g on a.gid=b.gid " 
			+ "left join type t on g.tid=t.tid " 
			+ "where g.gdesc like concat('%',#{gdesc},'%');")
	List<Map<String, Object>> findByGdesc(@Param("gdesc") String gdesc);

	// 按商品名以及价格区间查找
	@Select("select * from goods g on a.gid=b.gid " 
			+ "left join type t on g.tid=t.tid "
			+ "where g.gname like concat('%',#{likeName},'%') "
			+ "and gnowprice >= #{minPrice} and gnowprice <= #{maxPrice};")
	List<Map<String, Object>> findByPrice(@Param("likeName") String likeName, @Param("minPrice") Double minPrice,
			@Param("maxPrice") Double maxPrice);
	
	//热销商品
	@Select("select a.*,sum(b.num) num from goods a left join ordersdetail b on a.gid=b.gid left join orders c on b.oid=c.oid left join store d on d.sid=a.sid " + 
			"where c.ostatus>0 and c.ostatus<5 and a.gstatus=1 and d.sstatus=1 group by a.gid order by sum(b.num) desc limit 0,6;")
	List<Map<String, Object>> findHotGoods();
	
	@Select("select * from goods g left join store s on g.sid=s.sid where gstatus=1 and s.sstatus=1 order by gpublish desc limit 0,#{rows}")
	List<Map<String, Object>> reduceHotGoods(@Param("rows")int rows);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 order by c.num desc limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery(@Param("page")int page,@Param("rows")int rows);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 order by a.gnowprice limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQueryAsc(@Param("page")int page,@Param("rows")int rows);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 order by d.count desc limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQueryOrder(@Param("page")int page,@Param("rows")int rows);
	
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and a.gname like concat('%',#{gname},'%') order by c.num desc")
	List<Map<String, Object>> goodsQueryByGname(@Param("page")int page,@Param("rows")int rows,@Param("gname")String gname);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and a.gname like concat('%',#{gname},'%') and a.gname like concat('%',#{gname1},'%') order by c.num desc")
	List<Map<String, Object>> goodsQueryByGname1(@Param("page")int page,@Param("rows")int rows,@Param("gname")String gname,@Param("gname1")String gname1);
	
	@Select("select count(*) from store s left join goods g on s.sid=g.sid where gstatus=1 and s.sstatus=1 and g.gname like concat('%',#{gname},'%')")
	long goodsQueryByGnameTotal(@Param("gname")String gname);
	
	@Select("select count(*) from store s left join goods g on s.sid=g.sid where gstatus=1 and s.sstatus=1 and g.gname like concat('%',#{gname},'%') and g.gname like concat('%',#{gname1},'%')")
	long goodsQueryByGnameTotal1(@Param("gname")String gname,@Param("gname1")String gname1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} order by c.num desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} order by d.count desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidOrder(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} order by a.gnowprice limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidprice(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid}")
	long goodsQueryByTidCount(@Param("tid")int tid);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} order by c.num desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} order by a.gnowprice limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1Asc(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} order by d.count desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1Order(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid}")
	long goodsQueryByTidCount1(@Param("tid")int tid);
	
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice between #{price1} and #{price2} order by c.num desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1AndPrice1(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice between #{price1} and #{price2} order by a.gnowprice limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1AndPrice1Asc(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice between #{price1} and #{price2} order by d.count desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1AndPrice1Order(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice between #{price1} and #{price2}")
	long goodsQueryByTidAndPriceCount1(@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice>=#{price1} order by c.num desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1AndPrice2(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice>=#{price1} order by a.gnowprice limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1AndPrice2Asc(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice>=#{price1} order by d.count desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTid1AndPrice2Order(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t2.tid=#{tid} and gnowprice>=#{price1}")
	long goodsByTidAndPriceCount1(@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice between #{price1} and #{price2} order by c.num desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidAndPrice(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice between #{price1} and #{price2} order by d.count desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidAndPriceOrder(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice between #{price1} and #{price2} order by a.gnowprice limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidAndPriceAsc(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice between #{price1} and #{price2}")
	long goodsQueryByTidAndPriceCount(@Param("tid")int tid,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice>=#{price1} order by c.num desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidAndPrice1(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice>=#{price1} order by d.count desc limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidAndPrice1Order(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice>=#{price1} order by a.gnowprice limit #{page},#{rows}")
	List<Map<String, Object>> goodsQueryByTidAndPrice1Asc(@Param("page")int page,@Param("rows")int rows,@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and t3.tid=#{tid} and gnowprice>=#{price1}")
	long goodsQueryByTidPriceCount1(@Param("tid")int tid,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and gnowprice between #{price1} and #{price2} order by c.num desc limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery1(@Param("page")int page,@Param("rows")int rows,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and gnowprice between #{price1} and #{price2} order by a.gnowprice limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery1Asc(@Param("page")int page,@Param("rows")int rows,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and gnowprice between #{price1} and #{price2} order by d.count desc limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery1Order(@Param("page")int page,@Param("rows")int rows,@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and gnowprice>=#{price1} order by c.num desc limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery2(@Param("page")int page,@Param("rows")int rows,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and gnowprice>=#{price1} order by a.gnowprice limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery2Asc(@Param("page")int page,@Param("rows")int rows,@Param("price1")int price1);
	
	@Select("select a.*,b.sname,c.num,d.count from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join \r\n" + 
			"(select sum(c.num) num, c.gid from ordersdetail c \r\n" + 
			"left join orders d on c.oid=d.oid \r\n" + 
			"where d.OSTATUS<>6 and d.OSTATUS<>-1 and d.OSTATUS<>5 group by c.gid) c on c.gid=a.gid\r\n" + 
			"left join \r\n" + 
			"(select count(*) count,gid from discuss) d on d.gid=a.gid\r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and gnowprice>=#{price1} order by d.count desc limit #{page},#{rows};\r\n" + 
			"")
	List<Map<String, Object>> goodsQuery2Order(@Param("page")int page,@Param("rows")int rows,@Param("price1")int price1);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and gnowprice between #{price1} and #{price2}")
	long goodsQueryTotal1(@Param("price1")int price1,@Param("price2")int price2);
	
	@Select("select count(*) from goods a\r\n" + 
			"left join store b on b.sid=a.sid\r\n" + 
			"left join type t1 on t1.tid=a.tid left join type t2 on t1.tparentid=t2.tid left join type t3 on t2.tparentid=t3.tid \r\n" + 
			"where b.sstatus=1 and a.gstatus=1 and t1.tparentid is not null and t2.tparentid is not null and gnowprice>=#{price1}")
	long goodsQueryTotal2(@Param("price1")int price1);
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    long countByExample(GoodsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByExample(GoodsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByPrimaryKey(Integer gid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insert(Goods record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insertSelective(Goods record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    List<Goods> selectByExample(GoodsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    Goods selectByPrimaryKey(Integer gid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExampleSelective(@Param("record") Goods record, @Param("example") GoodsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExample(@Param("record") Goods record, @Param("example") GoodsExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKeySelective(Goods record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table goods
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKey(Goods record);
}