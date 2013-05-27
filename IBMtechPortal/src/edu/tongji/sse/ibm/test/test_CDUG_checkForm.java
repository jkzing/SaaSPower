package edu.tongji.sse.ibm.test;

import java.util.Date;

import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;
import edu.tongji.sse.ibm.pojo.User;
import edu.tongji.sse.ibm.service.CDUG_checkForm;

public class test_CDUG_checkForm {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CDUG_signUpForm form = new CDUG_signUpForm();
		form.setCom_address("123");
		form.setCom_postCode("200070");
		form.setCompany("company");
		form.setEmail("jiangwish@gmail.com");
		form.setName("jiangwei");
		form.setPhone("18018506000");
		form.setSex("mail");
		form.setCreater(new User());
		form.setSignUpDate(new Date(System.currentTimeMillis()));
		System.out.println(CDUG_checkForm.check(form));
	}

}
