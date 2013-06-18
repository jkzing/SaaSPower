package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.service.CDUG_checkUser;

public class UserCheckAjaxAction extends ActionSupport{
	
	private String userName;
	private String password;
	private boolean isOk = false;

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public String execute() {
		if (CDUG_checkUser.check(userName, password)) {
			isOk = true;
		}
		return SUCCESS;
	}

	public boolean isOk() {
		return isOk;
	}

	public void setOk(boolean isOk) {
		this.isOk = isOk;
	}
}
