package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.pojo.CDUG_res;

public class CDUG_ResourcesAction extends ActionSupport {
	
	private List<CDUG_res> resouces;
	
	public List<CDUG_res> getResouces() {
		return resouces;
	}

	public void setResouces(List<CDUG_res> resouces) {
		this.resouces = resouces;
	}
	
	public String execute() {
		resouces = CDUG_resDAO.getResList();
		return SUCCESS;
	}

}
