package com.bs.beststore.dao;

import com.bs.beststore.vo.Orders;
import com.bs.beststore.vo.OrdersExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface OrdersMapper {
	
	@Select("select * form order o"
			+ "left join address a on o.aid=a.aid "
			+ "left join human h on o.hid=h.hid "
			+ "left join store s on o.hid=s.hid"
			+ "where o.hid=#{hid};")
	List<Map<String, Object>> findByHid(@Param("hid")int hid);
	
	@Select("select * form order o"
			+ "left join address a on o.aid=a.aid "
			+ "left join human h on o.hid=h.hid "
			+ "left join store s on o.hid=s.hid"
			+ "where o.ostatus=#{status} and s.sid=#{sid};")
	List<Map<String, Object>> findBySid(@Param("status")int status,@Param("sid")int sid);
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    long countByExample(OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int deleteByExample(OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int deleteByPrimaryKey(Integer oid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int insert(Orders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int insertSelective(Orders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    List<Orders> selectByExample(OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    Orders selectByPrimaryKey(Integer oid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByExampleSelective(@Param("record") Orders record, @Param("example") OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByExample(@Param("record") Orders record, @Param("example") OrdersExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByPrimaryKeySelective(Orders record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table orders
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByPrimaryKey(Orders record);
}