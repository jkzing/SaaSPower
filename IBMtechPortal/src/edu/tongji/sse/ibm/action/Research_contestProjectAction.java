package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.dao.Research_projectDAO;
import edu.tongji.sse.ibm.pojo.Portal_info;
import edu.tongji.sse.ibm.pojo.Research_project;

public class Research_contestProjectAction extends ActionSupport {
	private List<Research_project> projectlist;
	public String execute(){
		projectlist = Research_projectDAO.getProjectList("contest");
		return SUCCESS;
	}
	public List<Research_project> getProjectlist() {
		return projectlist;
	}
	public void setProjectlist(List<Research_project> projectlist) {
		this.projectlist = projectlist;
	}

}
