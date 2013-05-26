package edu.tongji.sse.ibm.service;

import java.util.List;
import edu.tongji.sse.ibm.pojo.User;
import edu.tongji.sse.ibm.tools.PasswordCrypter;
import edu.tongji.sse.ibm.tools.Validator;
import edu.tongji.sse.ibm.dao.UserDAO;

public class CDUG_register {
	
	public static User regist(String email,String passwd){
		if(!Validator.isEmail(email) || !checkPasswd(passwd)){
			return null;
		}
		String encryptedEmail = PasswordCrypter.string_encrypt(email);
		String encryptedPasswd = PasswordCrypter.string_encrypt(passwd);
		List<User> list = UserDAO.getUsers(encryptedEmail);
		if(list == null || list.size() == 0){
			User newUser = (User) UserDAO.insertUser(encryptedEmail, encryptedPasswd);
			if(newUser == null){
				return null;
			}else{
				return newUser;
			}
		}else{
			return null;
		}
	}

	private static boolean checkPasswd(String passwd){
		if(passwd.length() <6 || passwd.length() > 12){
			return false;
		}else{
			return true;
		}
	}
}
