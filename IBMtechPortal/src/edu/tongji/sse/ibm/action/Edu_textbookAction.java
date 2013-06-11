package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.Edu_textBookDAO;
import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.pojo.Edu_textBook;
import edu.tongji.sse.ibm.pojo.Portal_info;

public class Edu_textbookAction extends ActionSupport {
	private List<Edu_textBook> Edu_textBookList;
	public String execute(){
		setEdu_textBookList(Edu_textBookDAO.getEdu_textBookList());
		return SUCCESS;
	}
	public List<Edu_textBook> getEdu_textBookList() {
		return Edu_textBookList;
	}
	public void setEdu_textBookList(List<Edu_textBook> edu_textBookList) {
		Edu_textBookList = edu_textBookList;
	}

}
