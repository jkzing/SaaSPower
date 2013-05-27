package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{
	
	public String execute(){
		ActionContext.getContext().getSession().remove("userId");
		return SUCCESS;
	}

}
