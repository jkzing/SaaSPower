package edu.tongji.sse.ibm.service;

import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;
import edu.tongji.sse.ibm.tools.Validator;

public class CDUG_checkForm {

	public static CDUG_signUpForm check(CDUG_signUpForm form) {
		if (form.getCom_address().isEmpty()) {
			System.out.println("add");
			return null;
		} else if (!Validator.isPostcode(form.getCom_postCode())) {
			System.out.println("zipcode");
			return null;
		} else if (form.getCompany().isEmpty()) {
			System.out.println("com");
			return null;
		} else if (form.getCreater() == null) {
			System.out.println("user");
			return null;
		} else if (!Validator.isEmail(form.getEmail())) {
			return null;
		} else if (form.getName().isEmpty()) {
			System.out.println("name");
			return null;
		} else if (!Validator.isMobileNO(form.getPhone()) && !Validator.isTelephone(form.getPhone())) {
			System.out.println("phone");
			return null;
		} else if (form.getSex().isEmpty()) {
			System.out.println("sex");
			return null;
		} else if (form.getSignUpDate() == null) {
			System.out.println("date");
			return null;
		} else {
			return form;
		}
	}
}
