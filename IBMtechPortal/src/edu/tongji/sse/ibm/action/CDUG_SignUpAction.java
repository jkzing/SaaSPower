package edu.tongji.sse.ibm.action;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.CDUG_signUpForm;
import edu.tongji.sse.ibm.service.CDUG_signUp;

public class CDUG_SignUpAction extends ActionSupport {

	private String[] com_address;
	private String[] com_postCode;
	private String[] com_phone;
	private String[] company;
	private String[] email;
	private String[] name;
	private String[] phone;
	private String[] sex;
	private String errorMessage;

	public String[] getCom_address() {
		return com_address;
	}

	public void setCom_address(String[] com_address) {
		this.com_address = com_address;
	}

	public String[] getCom_postCode() {
		return com_postCode;
	}

	public void setCom_postCode(String[] com_postCode) {
		this.com_postCode = com_postCode;
	}

	public String[] getCom_phone() {
		return com_phone;
	}

	public void setCom_phone(String[] com_phone) {
		this.com_phone = com_phone;
	}

	public String[] getCompany() {
		return company;
	}

	public void setCompany(String[] company) {
		this.company = company;
	}

	public String[] getEmail() {
		return email;
	}

	public void setEmail(String[] email) {
		this.email = email;
	}

	public String[] getName() {
		return name;
	}

	public void setName(String[] name) {
		this.name = name;
	}

	public String[] getPhone() {
		return phone;
	}

	public void setPhone(String[] phone) {
		this.phone = phone;
	}

	public String[] getSex() {
		return sex;
	}

	public void setSex(String[] sex) {
		this.sex = sex;
	}

	public String execute() {
		CDUG_signUpForm form;
		boolean isError = false;
		for (int i = 0; i < name.length; i++) {
			form = new CDUG_signUpForm();
			form.setCom_address(com_address[i]);
			form.setCom_postCode(com_postCode[i]);
			form.setCompany(company[i]);
			form.setEmail(email[i]);
			form.setName(name[i]);
			form.setPhone(phone[i]);
//			form.setSex(sex[i]);
			form.setSignUpDate(new Date(System.currentTimeMillis()));
			form.setCreater(UserDAO.getCurrentUser());
			if(CDUG_signUp.singUp(form) == null){
				isError = true;;
			}
		}
		if(isError){
			return ERROR;
		}else{
			return SUCCESS;			
		}

	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
}
