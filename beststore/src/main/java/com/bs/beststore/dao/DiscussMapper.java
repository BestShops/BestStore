package com.bs.beststore.dao;

import com.bs.beststore.vo.Discuss;
import com.bs.beststore.vo.DiscussExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface DiscussMapper {
	
	@Select("select *,tid form favorite a left join goods b on a.gid=b.gid " + 
			"left join photo c on b.gid=c.gid left join type t on b.tidwhere a.hid=#{params};")
	List<Map<String, Object>> findByHid(@Param("params")int hid);
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    long countByExample(DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int deleteByExample(DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int deleteByPrimaryKey(Integer did);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int insert(Discuss record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int insertSelective(Discuss record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    List<Discuss> selectByExample(DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    Discuss selectByPrimaryKey(Integer did);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int updateByExampleSelective(@Param("record") Discuss record, @Param("example") DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int updateByExample(@Param("record") Discuss record, @Param("example") DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int updateByPrimaryKeySelective(Discuss record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Thu Aug 23 11:50:18 CST 2018
     */
    int updateByPrimaryKey(Discuss record);
}