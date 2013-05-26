package edu.tongji.sse.ibm.test;

import java.util.List;

import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.pojo.CDUG_res;

public class test_getResList {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<CDUG_res> resouces =  CDUG_resDAO.getResList();
		System.out.println(resouces.size());
	}

}
