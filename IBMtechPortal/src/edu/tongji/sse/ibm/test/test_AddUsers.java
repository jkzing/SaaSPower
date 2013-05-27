package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.service.CDUG_register;
import edu.tongji.sse.ibm.tools.PasswordCrypter;

public class test_AddUsers {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CDUG_register.regist("jiangwei@gmail.com", "232101");
		CDUG_register.regist("jingkaizhao@gmail.com", "sbsbsb");
		CDUG_register.regist("weijiang@gmail.com", "123123");
	}                                                   
}
