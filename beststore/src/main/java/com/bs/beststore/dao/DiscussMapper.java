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
	
	@Select("select a.gphotopic,b.sname,a.gname,a.glastprice,a.gnowprice,a.gdesc,sum(c.num) num from goods a\r\n" + 
			"left join store b on a.sid=b.sid\r\n" + 
			"right join ordersdetail c on c.gid=a.gid\r\n" + 
			"where a.gid=#{gid} group by a.gid")
	List<Map<String, Object>> findInfoByGid(@Param("gid")int gid);
	
	@Select("select count(*) count from discuss a\r\n" + 
			"left join goods b on a.gid=b.gid\r\n" + 
			"where a.gid=#{gid}")
	List<Map<String, Object>> getCount(@Param("gid")int gid);
	
	@Select("select count(*) count from discuss a\r\n" + 
			"left join goods b on a.gid=b.gid\r\n" + 
			"where a.gid=#{gid} and a.drank=0")
	List<Map<String, Object>> getGood(@Param("gid")int gid);
	
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    long countByExample(DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByExample(DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int deleteByPrimaryKey(Integer did);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insert(Discuss record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int insertSelective(Discuss record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    List<Discuss> selectByExample(DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    Discuss selectByPrimaryKey(Integer did);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExampleSelective(@Param("record") Discuss record, @Param("example") DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByExample(@Param("record") Discuss record, @Param("example") DiscussExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKeySelective(Discuss record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table discuss
     *
     * @mbg.generated Wed Aug 29 09:57:28 CST 2018
     */
    int updateByPrimaryKey(Discuss record);

}