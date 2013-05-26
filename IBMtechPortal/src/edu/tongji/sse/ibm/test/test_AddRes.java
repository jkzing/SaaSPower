package edu.tongji.sse.ibm.test;

import java.sql.Timestamp;

import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.CDUG_res;

public class test_AddRes {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		CDUG_res resource = new CDUG_res();
		resource.setName("test_name");
		resource.setProfile("test_profile");
		resource.setUploadDate(new Timestamp(System.currentTimeMillis()));
		//resource.setCreater(UserDAO.getUser(1));
		resource.setURL("res/" + "resource_1.doc");
		resource = CDUG_resDAO.insertRes(resource);
	}

}
