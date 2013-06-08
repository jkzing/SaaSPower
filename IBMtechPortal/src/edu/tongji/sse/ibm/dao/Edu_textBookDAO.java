package edu.tongji.sse.ibm.dao;

import java.util.List;

import edu.tongji.sse.ibm.pojo.Edu_textBook;

public class Edu_textBookDAO extends BaseDAO{
	
	public static List getEdu_textBookList(){
		return getList("Edu_textBook");
	}
	
	public static Edu_textBook getEdu_textBook(int id) {
		return (Edu_textBook) get(id, "Edu_textBook");
	}
}
