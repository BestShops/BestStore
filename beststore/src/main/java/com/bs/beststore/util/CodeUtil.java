package com.bs.beststore.util;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Random;

public class CodeUtil {
	public static ArrayList<String> VerificationCode = new ArrayList<String>();
	
	/**
	 * 生成邮箱验证码
	 * @return
	 */
	public static String generateUniqueCode() {
		// 清理过时的验证码
		CodeUtil codeUtil = new CodeUtil();
		codeUtil.clearCode();
		
		// 验证码的数组
		String codes = "0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz";
		String[] list = codes.split("");
		
		// 随机产生验证码
		String code = "";
		Random r = new Random();
		for (int i = 0,length = list.length; i < 4; i ++) {
			int index = r.nextInt(length);
			code += list[index];
		}
		
		// 添加时间戳
		code += new Date().getTime();
		
		// 将验证码存入到静态变量中
		VerificationCode.add(code);
		return code;
	}
	
	/**
	 * 清理过时的激活码，过期时间：15分钟
	 */
	private void clearCode() {
		if (VerificationCode != null) {
			// 使用迭代器循环删除list里面的值
			Iterator<String> it = VerificationCode.iterator();
			while(it.hasNext()) {
				String x = it.next();
				long nowTime = new Date().getTime();// 获取现在的时间戳
				long codeTime = Long.parseLong(x.substring(4, x.length() - 1));// 获取验证码中的时间戳
				long difference = nowTime - codeTime;// 获取两个时间戳之间的差值
				if (difference > 15 * 60 * 1000) {// 将15分钟转换为时间戳的值：15分钟 * 60秒 * 1000毫秒
					System.out.println(x);
					it.remove();// 超时，移除这个code
				}
			}
		}
	}

}
