package edu.tongji.sse.ibm.action;

import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.Edu_teacherInfoDAO;
import edu.tongji.sse.ibm.pojo.Edu_teacherInfo;

public class Edu_teacherListAction extends ActionSupport {
	private List<Edu_teacherInfo> infolist;
	public String execute(){
		infolist = Edu_teacherInfoDAO.getInfoList();
		return SUCCESS;
	}
	public List<Edu_teacherInfo> getInfolist() {
		return infolist;
	}
	public void setInfolist(List<Edu_teacherInfo> infolist) {
		this.infolist = infolist;
	}
}
