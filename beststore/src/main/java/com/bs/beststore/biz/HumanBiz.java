package com.bs.beststore.biz;

import java.util.List;

import com.bs.beststore.vo.Human;

public interface HumanBiz {
	
	/**
	 * 查看所有的用户信息
	 * @return	返回一个Human类型的集合
	 */
	List<Human> findAll();
	
	/**
	 * 注册，用户提供必需的用户名、密码、性别信息，以及其他一些可不填写的信息，结合系统给出的用户等级进行注册
	 * @param human	注册时所提供的信息，用户名、密码、性别、以及用户等级
	 * @return	成功返回1，否则为失败
	 */
	int register(Human human);
	
	/**
	 * 登录，由用户提供用户名(或手机号或邮箱)和密码进行登录验证
	 * @param human 用户名、密码
	 * @return	成功就返回登录者的具体信息，失败返回为空
	 */
	Human login(Human human);
	
	/**
	 * 修改用户信息  用户提供用户id，可以修改除密码外的所有信息，包括用户名
	 * @param human
	 * @return	成功返回1，否则判定为失败
	 */
	int upload(Human human);    
	
	/**
	 * 修改密码，因为是在用户界面，系统直接提供用户id、用户名，用户输入旧密码和新密码，根据用户id进行修改
	 * @param human		存储在session中的登录者的信息
	 * @param oldPwd	输入的旧密码
	 * @param newPwd	输入的新密码
	 * @return	成功返回1，否则判定为失败
	 */
	int changePwd(Human human, String oldPwd, String newPwd) throws BizException;
	
	/**
	 * 找回密码，验证过后，根据用户名修改新的密码
	 * @param hname
	 * @return	成功返回1，否则判定为失败
	 */
	int findPwd(Human human);
	

}
