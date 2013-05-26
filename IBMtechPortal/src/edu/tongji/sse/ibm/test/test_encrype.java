package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.tools.PasswordCrypter;

public class test_encrype {
	public static void main(String args[]){
		PasswordCrypter c = PasswordCrypter.getInstance();
		PasswordCrypter.setPasswd("123123");
		String name = "jiangwfdfddfdei";
		try{
			System.out.println(c.string_decrypt(c.string_encrypt(name)));
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
}
