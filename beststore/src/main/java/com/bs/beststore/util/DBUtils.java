package com.bs.beststore.util;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * 这是一个dao包插入注解的示范类
 */
public interface DBUtils {

	// $用于引用sql语句，#用于在sql语句中插入数值
	@Select("select * from user where uid=#{params[0]} and uname=#{params[1]}")
	<T> List<T> find(@Param("sql")String sql, @Param("params")Object...params);
	
	@Insert("${sql}")
	int insert(@Param("sql")String sql, @Param("params")Object...params);
	
	@Update("${sql}")
	int update(@Param("sql")String sql, @Param("params")Object...params);
	
	@Delete("${sql}")
	int delete(@Param("sql")String sql, @Param("params")Object...params);
	
}
