package edu.tongji.sse.ibm.action;


import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.service.CDUG_register;

public class RegisterAction extends ActionSupport {

	/**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String registEmail;
	private String registPasswd;
	private String errorMessage;
	

	public String getRegistEmail() {
        return registEmail;
    }

    public void setRegistEmail(String registEmail) {
        this.registEmail = registEmail;
    }

    public String getRegistPasswd() {
        return registPasswd;
    }

    public void setRegistPasswd(String registPasswd) {
        this.registPasswd = registPasswd;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String execute() {
	    System.out.println(registEmail + " " + registPasswd);
		CDUG_register register = new CDUG_register();
		if (CDUG_register.regist(registEmail, registPasswd) == null) {
			return ERROR;
		} else {
			return SUCCESS;
		}
	}
}