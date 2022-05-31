package com.nds.webzine.dto;

import java.sql.Date;

public class FreeBoard {
	int fbNo;
	String fbWriter;
	String title;
	String contents;
	boolean secret;
	String recordDate;
	int views;
	
	public int getFbNo() {
		return fbNo;
	}
	public void setFbNo(int fbNo) {
		this.fbNo = fbNo;
	}
	public String getFbWriter() {
		return fbWriter;
	}
	public void setFbWriter(String fbWriter) {
		this.fbWriter = fbWriter;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public boolean isSecret() {
		return secret;
	}
	public void setSecret(boolean secret) {
		this.secret = secret;
	}
	public String getRecordDate() {
		return recordDate;
	}
	public void setRecordDate(String recordDate) {
		this.recordDate = recordDate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
	
}
