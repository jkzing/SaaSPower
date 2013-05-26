package edu.tongji.sse.ibm.action;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import edu.tongji.sse.ibm.dao.CDUG_resDAO;
import edu.tongji.sse.ibm.dao.UserDAO;
import edu.tongji.sse.ibm.pojo.CDUG_res;
import edu.tongji.sse.ibm.pojo.User;

public class FileUploadAction {

	private File upload_file;
	private String upload_fileFileName;
	private String resName;
	private User creater;
	private String errorMessage;
	private String profile;

	private CDUG_res resource;

	public String execute() throws IOException {
		if (upload_file == null) {
			setErrorMessage("没有上传文件");
			return "error";
		}
		creater = UserDAO.getCurrentUser();
		if (creater == null) {
			setErrorMessage("");
			return "error";
		}
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/res");
		String[] fileNames = upload_fileFileName.split("\\.");
		String saveFileName = System.currentTimeMillis() + "."
				+ fileNames[fileNames.length - 1];
		File saveFile = new File(new File(realpath), saveFileName);
		if (!saveFile.getParentFile().exists())
			saveFile.getParentFile().mkdirs();
		FileUtils.copyFile(upload_file, saveFile);
		resource = new CDUG_res();
		resource.setName(resName);
		resource.setProfile(profile);
		resource.setUploadDate(new Timestamp(System.currentTimeMillis()));
		resource.setCreater(creater);
		resource.setURL("res/" + saveFileName);
		resource = CDUG_resDAO.insertRes(resource);
		if (resource == null) {
			setErrorMessage("");
			return "error";
		} else {
			return "success";
		}
	}

	public File getUpload_file() {
		return upload_file;
	}

	public void setUpload_file(File upload_file) {
		this.upload_file = upload_file;
	}

	public String getUpload_fileFileName() {
		return upload_fileFileName;
	}

	public void setUpload_fileFileName(String upload_fileFileName) {
		this.upload_fileFileName = upload_fileFileName;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public User getCreater() {
		return creater;
	}

	public void setCreater(User creater) {
		this.creater = creater;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}
}
