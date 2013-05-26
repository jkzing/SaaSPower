package edu.tongji.sse.ibm.pojo;

import java.util.Date;
import java.util.Set;

public class News {
	private Integer id;
	private String title;
	private String content;
	private Date createTime;
	private String sort;
	private Set<File> files;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Set<File> getFiles() {
		return files;
	}
	public void setFiles(Set<File> files) {
		this.files = files;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
}
