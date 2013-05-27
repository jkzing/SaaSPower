package edu.tongji.sse.ibm.test;

import edu.tongji.sse.ibm.dao.CDUG_expertDAO;
import edu.tongji.sse.ibm.pojo.CDUG_expert;

public class test_AddExperts {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		CDUG_expert expert = new CDUG_expert();
		expert.setEmail("123@123.com");
		expert.setName("213");
		expert.setPicURL("assets/img/tongji_logo.jpg");
		expert.setProfile("testestestestest");
		expert.setPost("test");
		CDUG_expertDAO.insertExpert(expert);
	}

}
