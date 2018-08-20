package com.bs.beststore.dao;

import com.bs.beststore.vo.Ordersdetail;
import com.bs.beststore.vo.OrdersdetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrdersdetailMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    long countByExample(OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int deleteByExample(OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int deleteByPrimaryKey(Integer odid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int insert(Ordersdetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int insertSelective(Ordersdetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    List<Ordersdetail> selectByExample(OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    Ordersdetail selectByPrimaryKey(Integer odid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByExampleSelective(@Param("record") Ordersdetail record, @Param("example") OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByExample(@Param("record") Ordersdetail record, @Param("example") OrdersdetailExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByPrimaryKeySelective(Ordersdetail record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table ordersdetail
     *
     * @mbg.generated Mon Aug 20 14:58:04 CST 2018
     */
    int updateByPrimaryKey(Ordersdetail record);
}