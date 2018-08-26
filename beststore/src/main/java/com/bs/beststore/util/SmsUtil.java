package com.bs.beststore.util;

public class SmsUtil implements Runnable{

	private String phone;// 收件人手机号
    private String code;// 激活码
 
    public SmsUtil(String phone, String code) {
        this.phone = phone;
        this.code = code;
    }
	
    
    public void run() {
    	// 获取验证码
    	// System.out.println("----------"+code);
    	code = code.substring(0,4);
    	// 用户名
    	String Uid = "故事讲到了哪儿";
    	// 接口安全秘钥
    	String Key = "d41d8cd98f00b204e980";
    	// 手机号码，多个号码如13800000000,13800000001,13800000002
    	String smsMob = phone;
    	// 短信内容
    	String smsText = "验证码：" + code + "，BestStore用户，请您尽快填写验证码完成注册！";
        System.out.println("邮件成功发送!");
        HttpClientUtil client = HttpClientUtil.getInstance();
		// UTF发送
		int result = client.sendMsgUtf8(Uid, Key, smsText, smsMob);
		if (result > 0) {
			System.out.println("UTF8成功发送条数==" + result);
		} else {
			System.out.println(client.getErrorMsg(result));
		}
    }
    
}
