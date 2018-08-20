package com.bs.beststore.dao;

import com.bs.beststore.vo.Favorite;
import com.bs.beststore.vo.FavoriteExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FavoriteMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    long countByExample(FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int deleteByExample(FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int deleteByPrimaryKey(Integer fid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int insert(Favorite record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int insertSelective(Favorite record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    List<Favorite> selectByExample(FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    Favorite selectByPrimaryKey(Integer fid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int updateByExampleSelective(@Param("record") Favorite record, @Param("example") FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int updateByExample(@Param("record") Favorite record, @Param("example") FavoriteExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int updateByPrimaryKeySelective(Favorite record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table favorite
     *
     * @mbg.generated Mon Aug 20 09:28:45 CST 2018
     */
    int updateByPrimaryKey(Favorite record);
}