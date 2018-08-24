package com.bs.beststore.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

public class MailUtil implements Runnable {
    private String email;// 收件人邮箱
    private String code;// 激活码
 
    public MailUtil(String email, String code) {
        this.email = email;
        this.code = code;
    }
 
    public void run() {
    	// 获取验证码
    	// System.out.println("----------"+code);
    	code = code.substring(0,4);
        // 1.创建连接对象javax.mail.Session
        // 2.创建邮件对象 javax.mail.Message
        // 3.发送一封激活邮件
        String from = "pchmx@qq.com";// 发件人电子邮箱
        String host = "smtp.qq.com"; // 指定发送邮件的主机smtp.qq.com(QQ)|smtp.163.com(网易)
 
        Properties properties = System.getProperties();// 获取系统属性
 
        properties.setProperty("mail.smtp.host", host);// 设置邮件服务器
        properties.setProperty("mail.smtp.auth", "true");// 打开认证
 
        try {
            //QQ邮箱需要下面这段代码，163邮箱不需要
            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.ssl.socketFactory", sf);
 
 
            // 1.获取默认session对象
            Session session = Session.getDefaultInstance(properties, new Authenticator() {
                public PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, "qneycqgiychsbehh"); // 发件人邮箱账号、授权码
                }
            });
 
            // 2.创建邮件对象
            Message message = new MimeMessage(session);
            // 2.1设置发件人
            message.setFrom(new InternetAddress(from));
            // 2.2设置接收人
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
            // 2.3设置邮件主题
            message.setSubject("BestStore验证码");
            // 2.4设置邮件内容 里面的地址格式不变，具体地址待定
            String content = "<html><head></head><body>"
            		+ "<h1>【BestStore】验证码：" + code
                    + "，</h1><h2>BestStore用户，请您尽快填写验证码完成注册！</h2></body></html>";
            message.setContent(content, "text/html;charset=UTF-8");
            // 3.发送邮件
            Transport.send(message);
            System.out.println("邮件成功发送!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
//    public static void main(String[] args) {
//    	 //生成激活码
//        String code=CodeUtil.generateUniqueCode();
//        //通过线程的方式给用户发送一封邮件
//        new Thread(new MailUtil("pchmx@qq.com", code)).start();
//	}
}
