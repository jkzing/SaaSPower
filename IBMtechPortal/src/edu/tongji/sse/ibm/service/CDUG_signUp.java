package edu.tongji.sse.ibm.service;

import edu.tongji.sse.ibm.dao.CDUG_signUpFormDAO;
import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;

public class CDUG_signUp {

	public static CDUG_signUpForm singUp(CDUG_signUpForm form) {
		try {
				CDUG_signUpFormDAO.insertForm(form);
			return form;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return null;
		}
	}

}
