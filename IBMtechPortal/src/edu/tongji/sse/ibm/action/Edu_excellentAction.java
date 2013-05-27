package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.Edu_courseInfoDAO;
import edu.tongji.sse.ibm.pojo.Edu_courseInfo;

public class Edu_excellentAction extends ActionSupport {
	private List<Edu_courseInfo> courselist;
	public String execute(){
		courselist = Edu_courseInfoDAO.getlist();
		return SUCCESS;
	}
	public List<Edu_courseInfo> getCourselist() {
		return courselist;
	}
	public void setCourselist(List<Edu_courseInfo> courselist) {
		this.courselist = courselist;
	}
}
