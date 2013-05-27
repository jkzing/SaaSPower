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
	public String execute(){
		User user = UserDAO.getCurrentUser();
		if(user == null){
			return "logon";
		}
		return SUCCESS;
	}

}
