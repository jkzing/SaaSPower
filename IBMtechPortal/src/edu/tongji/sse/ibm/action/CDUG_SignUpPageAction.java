package edu.tongji.sse.ibm.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.User;

public class CDUG_SignUpPageAction extends ActionSupport {
	private HttpServletRequest request;
	private HttpServletResponse response;
	private HttpSession session;
	public String execute(){
		User user = UserDAO.getCurrentUser();
		if(user == null){
			request = ServletActionContext.getRequest();
			if ( null   !=  request.getQueryString())
				session.setAttribute( " redirectUrl " , request.getRequestURL().append( " ? ").append(request.getQueryString()).toString());
			else 
				session.setAttribute( " redirectUrl " , request.getRequestURL().toString());
			return "regist";
		}
		return SUCCESS;
	}

}
