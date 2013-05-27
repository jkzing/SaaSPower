package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CDUG_RegisterAction extends ActionSupport {
	
	public String execute(){
		if(ActionContext.getContext().getSession().get("userId") != null){
			return "index";
		}
		return SUCCESS;
	}

}
