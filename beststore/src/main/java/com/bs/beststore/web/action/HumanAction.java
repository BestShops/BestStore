package com.bs.beststore.web.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bs.beststore.biz.BizException;
import com.bs.beststore.biz.CartBiz;
import com.bs.beststore.biz.HumanBiz;
import com.bs.beststore.util.AccountValidatorUtil;
import com.bs.beststore.util.CodeUtil;
import com.bs.beststore.util.MD5Util;
import com.bs.beststore.vo.Human;

@Controller
public class HumanAction {

	@Resource
	private HumanBiz humanBiz;
	
	@Resource
	private CartBiz cartBiz;

	/**
	 * 个人信息修改
	 * @param file	头像图片，在展示时需要加上upload/
	 * @param human	个人信息
	 * @param model
	 * @param session
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("humanInfo.do")
	public String humanInfo(@RequestParam("file") MultipartFile file,
			Human human, String time, Model model, HttpSession session) throws IOException {
		if (!file.isEmpty()) {
			String fileName = file.getOriginalFilename();
			if (fileName.length() > 32) {
				fileName = fileName.substring(fileName.length() - 32, fileName.length());
			}
			String diskPath = session.getServletContext().getRealPath("/upload");
			File f = new File(diskPath + File.separator + fileName);
			if(!f.exists()){  
				f.mkdirs();  
			} 
			file.transferTo(f);
			human.setHphoto(fileName);
		}
		// 设置生日时间
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			human.setHbirth(format.parse(time));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		Human h = (Human) session.getAttribute("loginHuman");
		human.setHid(h.getHid());
		try {
			humanBiz.upload(human);
			model.addAttribute("success", "信息修改成功!");
			// 更新loginHuman
			session.setAttribute("loginHuman", humanBiz.findByHid(human));
			return "userInfo";
		} catch (BizException e) {
			model.addAttribute("error", e.getMessage());
			session.setAttribute("loginHuman", humanBiz.findByHid(human));
			return "userInfo";
		}
	}


	/**
	 * 从页面获取到用户名、密码、验证码，验证三个信息的完整性（js或java均可） 先验证验证码是否正确，然后再开始验证用户名和密码是否正确
	 * @param human   用户名和密码
	 * @param code    验证码
	 * @param out     返回给ajax的数据
	 * @param session 将登录成功的登陆者信息存入到session中的loginHuman(可读取完整数据)
	 */
	@RequestMapping(value = "login.todo")
	public void login(Human human, PrintWriter out, HttpSession session) {
		// 进行登录操作
		Human loginHuman;
		try {
			loginHuman = humanBiz.login(human, 0);
			session.setAttribute("loginHuman", loginHuman);// 将登录成功的用户信息存入到session中
			long count = cartBiz.countByHid(loginHuman.getHid()); // 根据Hid统计购物车条数
			session.setAttribute("cartCount", count); // 将购物车条数添加至session中，用于显示在页面中
			out.print("OK");
		} catch (BizException e) {
			out.print(e.getMessage());
		}
	}

	/**
	 * 后台管理员通过用户名/邮箱/手机号 和密码 登录
	 * @param human
	 * @param out
	 * @param session	
	 */
	@RequestMapping(value = "superLogin.todo")
	public void storeLogin(Human human, PrintWriter out, HttpSession session,String code) {
		// 进行登录操作
		Human superHuman = null;
		if(code.equalsIgnoreCase((String) session.getAttribute("vscode"))) {
			try {
				superHuman = humanBiz.superLogin(human);
				session.setAttribute("superHuman", superHuman);// 将登录成功的用户信息存入到session中
				out.print("OK");
			} catch (BizException e) {
				out.print(e.getMessage());
			}
		}else {
			out.print("验证码错误");
		}
	}

	/**
	 * 失焦判断用户名是否已经存在
	 * @param human
	 * @param out
	 */
	@RequestMapping("checkname.todo")
	public void checkname(Human human, String emailorphone, PrintWriter out) {
		if (AccountValidatorUtil.isMobile(emailorphone + "")) {
			human.setHphone(Long.valueOf(emailorphone));
		} else if (AccountValidatorUtil.isEmail(emailorphone + "")) {
			human.setHemail(emailorphone);
		} else if(human.getHname() == null) {
			human.setHname("--------为了防止查找--------假名字--------后期调优替换其他方法--------");
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
	@RequestMapping("register.todo")
	public void register(Human human, String emailorphone, String code, PrintWriter out, HttpSession session) {
		if (AccountValidatorUtil.isMobile(emailorphone + "")) {
			human.setHphone(Long.valueOf(emailorphone));
		} else if (AccountValidatorUtil.isEmail(emailorphone + "")) {
			human.setHemail(emailorphone);
		} else {
			out.print("手机/邮箱格式错误，请重新输入");
		}
		human.setHlimit(0);
		human.setHsex(1);// 默认为男性
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
	@RequestMapping("findPwd.todo")
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

	@RequestMapping("changePwd.do")
	// 修改密码
	public void changePwd(Human human, PrintWriter out, HttpSession session) {
		Human loginHuman = (Human) session.getAttribute("loginHuman");
		try {
			if(humanBiz.changePwd(loginHuman, human.getHpwd()) == 1) {
				out.print("OK");
			} else if(human.getHpwd() == null){
				out.print("密码不能为空");
			} else {
				out.print("密码输入错误");
			}
		} catch (BizException e) {
			out.print(e.getMessage());
		}
	}

	@RequestMapping("checkPwd.do")
	// 检查原密码是否正确
	public void checkPwd(Human human, PrintWriter out, HttpSession session) {
		Human loginHuman = (Human) session.getAttribute("loginHuman");
		if(loginHuman.getHpwd().equals(MD5Util.MD5(loginHuman.getHname() + human.getHpwd()))) {
			out.print("OK");
		} else if(human.getHpwd() == null){
			out.print("密码不能为空");
		} else {
			out.print("密码输入错误");
		}
	}

}
