package edu.tongji.sse.ibm.action;

import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.Edu_teacherInfoDAO;
import edu.tongji.sse.ibm.pojo.Edu_teacherInfo;

public class Edu_teacherInfoAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Edu_teacherInfo info;
	private String errorMessage;

	public String execute() {
		info = Edu_teacherInfoDAO.getInfo(id);
		if(info == null){
			setErrorMessage("can not find the info");
			return ERROR;
		}
		return SUCCESS;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Edu_teacherInfo getInfo() {
		return info;
	}

	public void setInfo(Edu_teacherInfo info) {
		this.info = info;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}


}
