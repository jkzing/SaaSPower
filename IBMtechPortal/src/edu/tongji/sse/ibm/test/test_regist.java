package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.User;
import edu.tongji.sse.ibm.service.CDUG_register;
import edu.tongji.sse.ibm.tools.PasswordCrypter;

public class test_regist {
	public static void main(String arg[]){
		try {
			User o = CDUG_register.regist("jiangwish", "123123123");
			User user = new User();
			user = UserDAO.getUser("jiangwish");
			System.out.println(o.getPasswd().length());
			System.out.println(user.getPasswd().length());
			System.out.println(PasswordCrypter.getInstance().string_decrypt(user.getUsername()));
			System.out.println(PasswordCrypter.getInstance().string_decrypt(new String(user.getPasswd())));
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
