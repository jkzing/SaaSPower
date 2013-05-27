package edu.tongji.sse.ibm.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.Edu_teacherInfoDAO;
import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.pojo.Edu_teacherInfo;

public class Edu_teacherInfoAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String info;
	private List<Edu_teacherInfo> teacherInfo;

	public String execute() {
		info = Portal_infoDAO.getInfo("teacherInfo").getContent();
		teacherInfo =  Edu_teacherInfoDAO.getInfoList();
		return SUCCESS;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public List<Edu_teacherInfo> getTeacherInfo() {
		return teacherInfo;
	}

	public void setTeacherInfo(List<Edu_teacherInfo> teacherInfo) {
		this.teacherInfo = teacherInfo;
	}


}
