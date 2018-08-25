package com.bs.beststore.web.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.vo.Human;

@Controller
public class HumanAction {

	@Resource
	private HumanBiz humanBiz;
	
	@RequestMapping(value="userLogin.do")
	public String userLogin() {
		return "login";
	}
	
	@RequestMapping(value="userInfoPage.do")
	public String userInfoPage() {
		return "userInfo";
	}
	
	@RequestMapping(value="couponPage.do")
	public String couponPage() {
		return "coupon";
	}
	
	@RequestMapping(value="userModifyPwdPage.do")
	public String userModifyPwdPage() {
		return "userModifyPwd";
	}
	
	@RequestMapping(value="userModifyPwdStep1.do")
	public String userModifyPwdStep1() {
		return "userModifyPwdStep1";
	}
	
	@RequestMapping(value="userModifyPwdStep2.do")
	public String userModifyPwdStep2() {
		return "userModifyPwdStep2";
	}
	
	@RequestMapping(value="userModifyPwdStep3.do")
	public String userModifyPwdStep3() {
		return "userModifyPwdStep3";
	}
	
	@RequestMapping(value="welcomePage.do")
	public String welcomePage(HttpServletRequest request) {
		request.setAttribute("status", 0);
		return "welcome";
	}
	
	@RequestMapping(value="userLogout.do")
	public String userLogout(HttpSession session) {
		session.removeAttribute("loginHuman");
		return "login";
	}
	
	
	/**
	 * 从页面获取到用户名、密码、验证码，验证三个信息的完整性（js或java均可） 先验证验证码是否正确，然后再开始验证用户名和密码是否正确
	 * @param human   用户名和密码
	 * @param code    验证码
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者信息存入到session中的loginHuman(可读取完整数据)
	 */
	@RequestMapping(value = "login.do")
	public void login(Human human, PrintWriter out, HttpSession session) {
		// 进行登录操作
		Human loginHuman;
		try {
			loginHuman = humanBiz.login(human);
			System.out.println(loginHuman);
			session.setAttribute("loginHuman", loginHuman);// 将登录成功的用户信息存入到session中
			out.print("OK");
		} catch (BizException e) {
			out.print(e.getMessage());
		}
	}

	/**
	 * 失焦判断用户名是否已经存在
	 * 
	 * @param human
	 * @param out
	 */
	@RequestMapping("checkname.do")
	public void checkname(Human human, String emailorphone, PrintWriter out) {
		if (AccountValidatorUtil.isMobile(emailorphone + "")) {
			human.setHphone(Long.valueOf(emailorphone));
		} else if (AccountValidatorUtil.isEmail(emailorphone + "")) {
			human.setHemail(emailorphone);
		} else if(human.getHname() == null) {
			out.print("error：no data");
		}
		if (humanBiz.findByCondition(human).size() <= 0) {
			out.print("OK");
		} else {
			out.print("该用户名已存在！");
		}
	}		

	/**
	 * 从页面获取到用户名、密码、性别等，验证码，用户等级 验证信息的完整性，必需包含用户名、密码、性别，其他的可以没有（js或java均可）
	 * 先验证验证码是否正确，然后再开始注册，注意，记得手动添加等级
	 * 
	 * @param human   用户名、密码、邮箱或手机号等
	 * @param code    验证码
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者的用户名存入session中hname
	 */
	@RequestMapping("register.do")
	public void register(Human human, String emailorphone, String code, PrintWriter out, HttpSession session) {
		if (AccountValidatorUtil.isMobile(emailorphone + "")) {
			human.setHphone(Long.valueOf(emailorphone));
		} else if (AccountValidatorUtil.isEmail(emailorphone + "")) {
			human.setHemail(emailorphone);
		} else {
			out.print("手机/邮箱格式错误，请重新输入");
		}
		human.setHlimit(0);
		ArrayList<String> list = CodeUtil.VerificationCode;
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).startsWith(code) && list.get(i).endsWith(emailorphone)) {
				humanBiz.register(human);
				session.setAttribute("hname", human.getHname());// 将登录成功的用户信息存入到session中
				out.print("OK");
			}
		}
	}

	/**
	 * 找回密码，用户通过邮箱或手机得到验证码后，输入用户名和新的密码后根据用户名修改密码
	 * 
	 * @param human   用户名和新的密码
	 * @param code    这个验证码是通过邮箱或者手机获取到的(建议邮箱)
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者的用户名存入session中hname
	 */
	@RequestMapping("findPwd.do")
	public void findPwd(Human human, String emailorphone, String code, PrintWriter out, HttpSession session) {
		if (AccountValidatorUtil.isMobile(emailorphone + "")) {
			human.setHphone(Long.valueOf(emailorphone));
		} else if (AccountValidatorUtil.isEmail(emailorphone + "")) {
			human.setHemail(emailorphone);
		} else {
			out.print("手机/邮箱格式错误，请重新输入");
		}
		ArrayList<String> list = CodeUtil.VerificationCode;
		for (int i = 0; i < list.size(); i++) {
			// 判断验证码是否存在，对应的手机号或者邮箱是否正确
			if (list.get(i).startsWith(code) 
					&& list.get(i).endsWith(emailorphone)
					// 判断用户是否存在，用手机号或者邮箱查找，因为邮箱和手机号都是唯一的，所以查出的结果只会是一条
					&& humanBiz.findByCondition(human).size() == 1) {
				// 遍历出唯一的一条记录，由名字查找，
				for (Human hm : humanBiz.findByCondition(human)) {
					// 将传进来的新密码设置到hm上，再进行更新
					hm.setHpwd(human.getHpwd());
					
					System.out.println("-------------------------" + hm.getHpwd());
					
					if (humanBiz.forgetPwd(hm) == 1) {
						out.print("OK");
					} else {
						out.print("修改失败，请重试！");
					}
				}
			}
		}
	}

}
