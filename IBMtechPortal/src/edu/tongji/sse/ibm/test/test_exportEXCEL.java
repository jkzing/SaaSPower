package edu.tongji.sse.ibm.test;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;
import edu.tongji.sse.ibm.service.CDUG_exportEXCEL;
import edu.tongji.sse.ibm.service.CDUG_signUp;

public class test_exportEXCEL {
	public static void main(String args[]) {
		CDUG_exportEXCEL export = new CDUG_exportEXCEL();
		export.export();
	}

}
