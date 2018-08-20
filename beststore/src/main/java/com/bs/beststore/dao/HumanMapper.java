package com.bs.beststore.dao;

import com.bs.beststore.vo.Human;
import com.bs.beststore.vo.HumanExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HumanMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    long countByExample(HumanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int deleteByExample(HumanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int deleteByPrimaryKey(Integer hid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int insert(Human record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int insertSelective(Human record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    List<Human> selectByExample(HumanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    Human selectByPrimaryKey(Integer hid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int updateByExampleSelective(@Param("record") Human record, @Param("example") HumanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int updateByExample(@Param("record") Human record, @Param("example") HumanExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int updateByPrimaryKeySelective(Human record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table human
     *
     * @mbg.generated Sat Aug 18 14:43:52 CST 2018
     */
    int updateByPrimaryKey(Human record);
}