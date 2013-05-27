package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;

public class ErrorPageAction extends ActionSupport{
	private String errorMessage;

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	
	public String execute(){
		return SUCCESS;
	}

}
