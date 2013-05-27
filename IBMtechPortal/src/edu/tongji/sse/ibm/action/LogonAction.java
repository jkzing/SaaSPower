package edu.tongji.sse.ibm.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.service.CDUG_checkUser;

public class LogonAction extends ActionSupport {

	/**
     * 
     */
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private String userName;
	private String password;
	private String errorMessage;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String execute() {
		if (CDUG_checkUser.check(userName, password)) {
			ActionContext.getContext().getSession()
					.put("userId", UserDAO.getUser(userName).getId());
			return SUCCESS;
		} else {
			return ERROR;
		}

	}

}