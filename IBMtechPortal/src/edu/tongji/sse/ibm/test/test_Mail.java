package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.tools.Mail;

public class test_Mail {
	public static void main(String[] args) {
		String mailbody = "发送邮件测试 <font color=red>欢迎你,java</font>";
		Mail themail = new Mail("smtp.gmail.com");
		themail.setNeedAuth(true);
		// 标题
		if (themail.setSubject("发送邮件测试") == false)
			return;
		// 邮件内容 支持html 如 <font color=red>欢迎你,java</font>
		if (themail.setBody(mailbody) == false)
			return;
		// 收件人邮箱
		if (themail.setTo("jiangweigaara@163.com") == false)
			return;
		// 发件人邮箱
		if (themail.setFrom("jiangwish@gmail.com") == false)
			return;
		// 设置附件
//		if (themail.addFileAffix("mail.txt") == false)
//			return; // 附件在本地机子上的绝对路径
		themail.setNamePass("jiangwish@gmail.com", "232101gg"); // 用户名与密码,即您选择一个自己的电邮
		if (themail.sendout() == false)
			return;
	}
}
