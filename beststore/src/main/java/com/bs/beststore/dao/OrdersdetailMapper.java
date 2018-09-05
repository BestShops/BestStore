package com.bs.beststore.dao;

import com.bs.beststore.vo.Ordersdetail;
import com.bs.beststore.vo.OrdersdetailExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface OrdersdetailMapper {
	
	
	@Select("select concat('''',g.gname,'''') as name,sum(od.num) as value from ordersdetail od "
			+ "left join goods g on od.gid = g.gid "
			+ "where g.sid = #{sid} group by g.gname")
	List<Map<String, Object>> findGnameAndNum(@Param("sid")int sid);
	
	@Select("select a.odid,a.odstatus,num,sname,gname,gphotopic,gnowprice,gdesc,b.gid from ordersdetail a\r\n" + 
			"left join goods b on a.gid=b.gid\r\n" + 
			"left join store c on b.sid=c.sid\r\n" + 
			"where a.oid=#{oid}")
	List<Map<String, Object>> findDetailByOid(@Param("oid")int oid);
	
	@Select("select * from orders o\r\n" + 
			"left join address a on o.aid=a.aid\r\n" + 
			"where oid=#{oid}")
	List<Map<String, Object>> findByOid(@Param("oid")int oid);
	
	@Select("select o.*,g.*, os.oid, os.gid, os.gprice, os.num as CNUM from ordersdetail os "
			+ "left join goods g on os.gid=g.gid "
			+ "left join orders o on os.oid=o.oid "
			+ "where os.oid=#{oid};")
	List<Map<String, Object>> findOrdersDetail(@Param("oid")int oid);
	
	@Insert("")
	int copyFromCart(int oid);
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    long countByExample(OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByExample(OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByPrimaryKey(Integer odid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insert(Ordersdetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insertSelective(Ordersdetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    List<Ordersdetail> selectByExample(OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    Ordersdetail selectByPrimaryKey(Integer odid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExampleSelective(@Param("record") Ordersdetail record, @Param("example") OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExample(@Param("record") Ordersdetail record, @Param("example") OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKeySelective(Ordersdetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKey(Ordersdetail record);

}