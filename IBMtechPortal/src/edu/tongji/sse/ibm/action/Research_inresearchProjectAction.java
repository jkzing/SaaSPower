package edu.tongji.sse.ibm.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.dao.Research_projectDAO;
import edu.tongji.sse.ibm.pojo.Portal_info;
import edu.tongji.sse.ibm.pojo.Research_project;

public class Research_inresearchProjectAction extends ActionSupport {
		private Portal_info info;
		public String execute(){
			setInfo(Portal_infoDAO.getInfo("inresearchProject"));
			return SUCCESS;
		}
		public Portal_info getInfo() {
			return info;
		}
		public void setInfo(Portal_info info) {
			this.info = info;
		}
}
