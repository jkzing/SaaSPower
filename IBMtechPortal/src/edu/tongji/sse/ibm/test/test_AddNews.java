package edu.tongji.sse.ibm.test;

import java.sql.Timestamp;

import edu.tongji.sse.ibm.dao.NewsDAO;
import edu.tongji.sse.ibm.pojo.News;
public class test_AddNews {
	
	public static void main(String[] args) {
		News news = new News();
		news.setContent("<p>≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘≤‚ ‘</p>");
		news.setTitle("≤‚ ‘8");
		news.setSort("club");
		news.setCreateTime(new Timestamp(System.currentTimeMillis()));
		NewsDAO.insertNews(news);
	}

}
