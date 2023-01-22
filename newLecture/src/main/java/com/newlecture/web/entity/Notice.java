package com.newlecture.web.entity;

import java.sql.Date;

public class Notice {

	private int id;
	private String title;
	private String writerId;
	private String hit;
	private Date regDate;
	private String files;
	private String content;

	public Notice() {

	}
	
	//오버로드 생성자 자동생성
	public Notice(int id, String title, String writerId, String hit, Date regDate, String files, String content) {
		this.id = id;
		this.title = title;
		this.writerId = writerId;
		this.hit = hit;
		this.regDate = regDate;
		this.files = files;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getFiles() {
		return files;
	}

	public void setFiles(String files) {
		this.files = files;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", title=" + title + ", writerId=" + writerId + ", hit=" + hit + ", regDate="
				+ regDate + ", files=" + files + ", content=" + content + "]";
	}
	
	
	
}


