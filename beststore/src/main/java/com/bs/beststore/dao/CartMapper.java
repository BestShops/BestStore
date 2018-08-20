package com.bs.beststore.dao;

import com.bs.beststore.vo.Cart;
import com.bs.beststore.vo.CartExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CartMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    long countByExample(CartExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int deleteByExample(CartExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int deleteByPrimaryKey(Integer cid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int insert(Cart record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int insertSelective(Cart record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    List<Cart> selectByExample(CartExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    Cart selectByPrimaryKey(Integer cid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int updateByExampleSelective(@Param("record") Cart record, @Param("example") CartExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int updateByExample(@Param("record") Cart record, @Param("example") CartExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int updateByPrimaryKeySelective(Cart record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table cart
     *
     * @mbg.generated Mon Aug 20 14:58:03 CST 2018
     */
    int updateByPrimaryKey(Cart record);
}