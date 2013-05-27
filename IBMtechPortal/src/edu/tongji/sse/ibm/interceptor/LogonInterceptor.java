package edu.tongji.sse.ibm.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.User;


public class LogonInterceptor implements Interceptor {
	private  static HttpServletRequest request;
	private  static HttpSession session;
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init() {
		// TODO Auto-generated method stub

	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		request = ServletActionContext.getRequest();
		session = request.getSession();
		Integer userId = (Integer) request.getAttribute("userId");
		if(userId == null){
				if ( null !=  request.getQueryString())
					session.setAttribute("redirectUrl" , request.getRequestURL().append("?").append(request.getQueryString()).toString());
				else 
					session.setAttribute( "redirectUrl" , request.getRequestURL().toString());
		}
		System.out.println(request.getRequestURL());
		String result = arg0.invoke();
		return result;
	}

}
