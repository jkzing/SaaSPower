package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;

public class CDUG_ExpertInfoAction extends ActionSupport{
	private Integer id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String execute() {
		return SUCCESS;
	}
}
