package com.bs.beststore.dao;

import com.bs.beststore.vo.Orders;
import com.bs.beststore.vo.OrdersExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface OrdersMapper {
	@Select("select gphotopic,a.oid,sname,gname,b.onowprice from ordersdetail a\r\n" + 
			"left join orders b on a.oid=b.oid\r\n" + 
			"left join goods c on a.gid=c.gid\r\n" + 
			"left join store d on c.sid=d.sid\r\n" + 
			"where a.oid=#{oid}")
	List<Map<String, Object>> findInfoByOid(@Param("oid")int oid);
	
	@Select("select count(*) count from orders where hid=#{hid} and ostatus<>5 and ostatus<>-1")
	List<Map<String, Object>> getCountByHid(@Param("hid") int hid);
	
	@Select("select count(*) count from orders where hid=#{hid} and ostatus=#{status}")
	List<Map<String, Object>> getCountByStatus(@Param("hid") int hid, @Param("status")int status);
	
	@Select("select a.*,b.num ,c.gname,c.gnowprice,c.gphotopic from orders a\r\n"
			+ "left join ordersdetail b on a.oid=b.oid\r\n" + "left join goods c on b.gid=c.gid\r\n"
			+ "where a.hid=#{hid} and ostatus<>5 and ostatus<>-1 group by oid  order by oid desc limit #{pageNo},#{pageSize}")
	List<Map<String, Object>> findByHid(@Param("hid") int hid, @Param("pageNo")int pageNo, @Param("pageSize")int pageSize);
	
	@Select("select a.*,b.num ,c.gname,c.gnowprice,c.gphotopic from orders a\r\n"
			+ "left join ordersdetail b on a.oid=b.oid\r\n" 
			+ "left join goods c on b.gid=c.gid\r\n"
			+ "where a.hid=#{hid} and ostatus=#{status} group by a.oid order by a.oid desc limit #{pageNo},#{pageSize}")
	List<Map<String, Object>> findByStatus(@Param("hid") int hid, @Param("status")int status, @Param("pageNo")int pageNo, @Param("pageSize")int pageSize);

//	@Select("select * from order o"
//			+ "left join address a on o.aid=a.aid "
//			+ "left join human h on o.hid=h.hid "
//			+ "left join store s on o.hid=s.hid"
//			+ "where o.hid=#{hid};")
//	List<Map<String, Object>> findByHid(@Param("hid")int hid);

	@Select("select * from order o" + " left join address a on o.aid=a.aid " + "left join human h on o.hid=h.hid "
			+ "left join store s on o.hid=s.hid" + " where o.ostatus=#{status} and s.sid=#{sid};")
	List<Map<String, Object>> findBySid(@Param("status") int status, @Param("sid") int sid);
	
	@Select("select a.*,b.num ,c.gname,c.gnowprice,c.gphotopic,d.hname from orders a\r\n"
			+ "left join ordersdetail b on a.oid=b.oid\r\n" + "left join goods c on b.gid=c.gid left join human d on d.hid=a.hid\r\n"
			+ "where ostatus<>5 group by oid order by oid desc limit #{pageNo},#{pageSize}")
	List<Map<String, Object>> findAllBySid(@Param("pageNo")int pageNo, @Param("pageSize")int pageSize);
	
	@Select("select count(distinct a.oid) from orders a\r\n"
			+ "left join ordersdetail b on a.oid=b.oid\r\n" + "left join goods c on b.gid=c.gid\r\n"
			+ "where ostatus<>5")
	long findBySidTotal();
	
	@Select("select count(distinct a.oid) from orders a\r\n"
			+ "left join ordersdetail b on a.oid=b.oid\r\n" + "left join goods c on b.gid=c.gid\r\n"
			+ "where ostatus=#{ostatus}")
	long findBySstatusTotal(@Param("ostatus")int ostatus);
	
	@Select("select a.*,b.num ,c.gname,c.gnowprice,c.gphotopic,d.hname from orders a\r\n"
			+ "left join ordersdetail b on a.oid=b.oid\r\n" + "left join goods c on b.gid=c.gid left join human d on d.hid=a.hid\r\n"
			+ "where ostatus=#{ostatus} group by oid order by oid desc limit #{pageNo},#{pageSize}")
	List<Map<String, Object>> findBySidAndOstatus(@Param("ostatus") int ostatus, @Param("pageNo")int pageNo, @Param("pageSize")int pageSize);
	
	@Insert("insert into orders values(null,current_timestamp(6),null,null,0,null,#{hid},#{olastprice},#{onowprice})")
	@Options(useGeneratedKeys=true,keyColumn="oid",keyProperty="oid")
	int insertOrders(Orders orders);
	
	
	@Update("update orders set otime=otime,opaytime=current_timestamp(6),ostatus=#{ostatus},aid=#{aid} where oid=#{oid}")
	int updateOrders(Orders orders);
	
	@Update("update orders set otime=otime,opaytime=opaytime,odealtime=current_timestamp(6),ostatus=#{ostatus} where oid=#{oid}")
	int updateOdealtime(Orders orders);
	
	@Update("update orders set otime=otime,opaytime=opaytime,odealtime=null,ostatus=#{ostatus} where oid=#{oid}")
	int updateReturnOrders(Orders orders);
	
	@Update("update orders set otime=otime,opaytime=opaytime,ostatus=#{ostatus} where oid=#{oid}")
	int updateOrdersStatus(Orders orders);
	
	@Update("update orders set otime=otime,opaytime=opaytime,odealtime=current_timestamp(6),ostatus=#{ostatus} where oid=#{oid}")
	int updateOtimeAndStatus(Orders orders);
	
	@Select("select num,g.gid from orders o\r\n" + 
			"left join ordersdetail od on o.oid=od.oid\r\n" + 
			"left join goods g on g.gid=od.gid where o.oid=#{oid}")
	List<Map<String, Object>> findGoodsSale(@Param("oid")int oid);
	
	@Select("select * from orders o\r\n" + 
			"left join address a on a.aid=o.aid\r\n" + 
			"where o.oid=#{oid}")
	List<Map<String, Object>> findAddressAndOrders(@Param("oid")int oid);
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    long countByExample(OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByExample(OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByPrimaryKey(Integer oid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insert(Orders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insertSelective(Orders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    List<Orders> selectByExample(OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    Orders selectByPrimaryKey(Integer oid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExampleSelective(@Param("record") Orders record, @Param("example") OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExample(@Param("record") Orders record, @Param("example") OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKeySelective(Orders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKey(Orders record);
}