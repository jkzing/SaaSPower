package edu.tongji.sse.ibm.action;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import edu.tongji.sse.ibm.dao.ClubInfoDAO;
import edu.tongji.sse.ibm.dao.InnovationProjectDAO;
import edu.tongji.sse.ibm.dao.Portal_infoDAO;
import edu.tongji.sse.ibm.dao.Student_contestDAO;
import edu.tongji.sse.ibm.pojo.ClubInfo;
import edu.tongji.sse.ibm.pojo.InnovationProject;
import edu.tongji.sse.ibm.pojo.Portal_info;
import edu.tongji.sse.ibm.pojo.Student_contest;

public class Club_InnovationProjectAction extends ActionSupport {
    private Portal_info info;
    public String execute(){
        setInfo(Portal_infoDAO.getInfo("innovationProject"));
        return SUCCESS;
    }
    public Portal_info getInfo() {
        return info;
    }
    public void setInfo(Portal_info info) {
        this.info = info;
    }

}
