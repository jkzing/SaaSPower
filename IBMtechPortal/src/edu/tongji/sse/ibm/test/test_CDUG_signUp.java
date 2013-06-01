package edu.tongji.sse.ibm.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;
import edu.tongji.sse.ibm.service.CDUG_exportEXCEL;
import edu.tongji.sse.ibm.service.CDUG_signUp;

public class test_CDUG_signUp {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		CDUG_signUpForm form = new CDUG_signUpForm();
		for(int i = 0; i < 10;i++){
		String str = "test" + i;
		form.setCom_address(str);
		form.setCom_postCode(str);
		form.setCompany(str);
		form.setEmail(str);
		form.setName(str);
		form.setPhone(str);
		form.setSex(str);
		form.setSignUpDate(new Date(System.currentTimeMillis()));
		CDUG_signUp.singUp(form);
		}
	}
}