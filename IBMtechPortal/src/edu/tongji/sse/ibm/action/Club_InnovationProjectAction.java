package edu.tongji.sse.ibm.action;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.ClubInfoDAO;
import edu.tongji.sse.ibm.dao.InnovationProjectDAO;
import edu.tongji.sse.ibm.dao.Student_contestDAO;
import edu.tongji.sse.ibm.pojo.ClubInfo;
import edu.tongji.sse.ibm.pojo.InnovationProject;
import edu.tongji.sse.ibm.pojo.Student_contest;

public class Club_InnovationProjectAction extends ActionSupport {
	private InnovationProject project;
	public String execute(){
		setProject(InnovationProjectDAO.getProject());
		return SUCCESS;
	}
	public InnovationProject getProject() {
		return project;
	}
	public void setProject(InnovationProject project) {
		this.project = project;
	}

}
