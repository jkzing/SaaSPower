package edu.tongji.sse.ibm.service;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.User;
import edu.tongji.sse.ibm.tools.PasswordCrypter;

public class CDUG_checkUser {
	
	public static boolean check(String email,String passwd){
		User user = UserDAO.getUser(email);
		if(user == null || !user.getPasswd().equals(PasswordCrypter.string_encrypt(passwd))){
			return false;
		}else{
			return true;
		}
	}

}
