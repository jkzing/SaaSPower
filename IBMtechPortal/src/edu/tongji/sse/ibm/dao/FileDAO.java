package edu.tongji.sse.ibm.dao;

import edu.tongji.sse.ibm.hibernateUtils.HibernateUtil;
import edu.tongji.sse.ibm.pojo.File;

public class FileDAO {
	
	public static File getFile(int id){
		File file = new File();
		String[] params = {"" + id};
		file = (File) HibernateUtil.uniqueQuery(
				"from File where id=?", params);
		return file;
	}

	public static File insertFile(File file) {
		if (HibernateUtil.saveObject(file)) {
			return file;
		} else {
			return null;
		}
	}

	public static File updateFile(File file) {
		if (HibernateUtil.updateObject(file)) {
			return file;
		} else {
			return null;
		}
	}

}
