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
	Human login(Human human, int status)  throws BizException;
	
	/**
	 * 超级管理员登录，由用户提供用户名(或手机号或邮箱)和密码进行登录验证
	 * @param human 用户名、密码
	 * @return	成功就返回登录者的具体信息，失败返回为空
	 */
	Human superLogin(Human human)  throws BizException;
	
	/**
	 * 修改用户信息  用户提供用户id，可以修改除密码外的所有信息，包括用户名
	 * @param human
	 * @return	成功返回1，否则判定为失败
	 */
	int upload(Human human) throws BizException;    
	
	/**
	 * 修改密码，因为是在用户界面，系统直接提供用户id、用户名，用户输入旧密码和新密码，根据用户id进行修改
	 * @param human		存储在session中的登录者的信息
	 * @param oldPwd	输入的旧密码
	 * @param newPwd	输入的新密码
	 * @return	成功返回1，否则判定为失败
	 */
	int changePwd(Human human, String newPwd) throws BizException;
	
	/**
	 * 找回密码，验证过后，根据用户名修改新的密码
	 * @param hname 传入名字 human.setHname，新密码
	 * @return	成功返回1，否则判定为失败
	 */
	int forgetPwd(Human human);

	/**
	 * 通过用户名来查找是否已经存在用户，主要用来验证用户名重复
	 * @param human 只需要传入Hname就行，即human.setHname
	 * @return
	 */
	List<Human> findByCondition(Human human);
	
	/**
	 * 根据id查看用户信息
	 * @param human
	 * @return
	 */
	Human findByHid(Human human);
	
	/**
	 * 根据hid检索当前用户的信息是否完善，包括身份证号、电话号码、邮箱地址
	 * @param human
	 * @return
	 */
	boolean check(Human human);
	
	/**
	 * 根据hid修改状态
	 * @param hid
	 * @param limit	状态
	 */
	void changeStatus(int hid, int limit);
	
	/**
	 * 计算距离生日多少天
	 */
	long birthTime(Human human);
	
	/**
	 * 判断手机号或者邮箱是否被注册
	 * @param human
	 */
	List<Human> findByPhoneOrEmail(Human human);

}
