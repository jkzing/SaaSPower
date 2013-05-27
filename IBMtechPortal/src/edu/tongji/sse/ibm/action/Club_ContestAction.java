package edu.tongji.sse.ibm.action;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.ClubInfoDAO;
import edu.tongji.sse.ibm.dao.Student_contestDAO;
import edu.tongji.sse.ibm.pojo.ClubInfo;
import edu.tongji.sse.ibm.pojo.Student_contest;

public class Club_ContestAction extends ActionSupport {
	private List<Student_contest> contestlist;
	public String execute(){
		setContestlist(Student_contestDAO.getList());
		return SUCCESS;
	}
	public List<Student_contest> getContestlist() {
		return contestlist;
	}
	public void setContestlist(List<Student_contest> contestlist) {
		this.contestlist = contestlist;
	}


}
