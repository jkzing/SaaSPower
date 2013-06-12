package edu.tongji.sse.ibm.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import edu.tongji.sse.ibm.dao.ResDAO;
import edu.tongji.sse.ibm.pojo.Res;

public class DownloadAction extends ActionSupport {
	private Integer id;
	private Res res;
	
	
	public String getFileName() throws UnsupportedEncodingException {
	   return URLEncoder.encode(res.getName(),"UTF-8");
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public InputStream getInputStream() throws IOException{
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/");
		File root = new File(realpath);
		File file = new File(root.getParent() + "/PortalAdmin/" + res.getURL());
		FileInputStream fis = new FileInputStream(file);
		byte[] b = null;
		if(fis != null){
			b = new byte[fis.available()];
			fis.read(b);
		}
		return new ByteArrayInputStream(b);
	}
	public String execute(){
	   res = ResDAO.getRes(id);
	   return "success";
	}
}
