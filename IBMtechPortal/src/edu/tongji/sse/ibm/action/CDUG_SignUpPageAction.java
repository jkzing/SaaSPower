package edu.tongji.sse.ibm.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.User;

public class CDUG_SignUpPageAction extends ActionSupport {
	private HttpServletRequest request;
	private HttpServletResponse response;
	public String execute(){
		User user = UserDAO.getCurrentUser();
		if(user == null){
			request = ServletActionContext.getRequest();
			response = ServletActionContext.getResponse();
			if ( null !=  request.getQueryString())
				ActionContext.getContext().getSession().put( "redirectUrl" , request.getRequestURL().append("?").append(request.getQueryString()).toString());
			else 
				ActionContext.getContext().getSession().put( "redirectUrl" , request.getRequestURL().toString());
			System.out.println( request.getRequestURL().toString());
			return "logon";
		}
		return SUCCESS;
	}

}
