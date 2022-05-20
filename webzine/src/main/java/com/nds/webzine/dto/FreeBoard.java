package com.nds.webzine.dto;

public class FreeBoard {
	String fbNo;
	String fbWriter;
	String title;
	String contents;
	boolean secret;
	
	public String getFbNo() {
		return fbNo;
	}
	public void setFbNo(String fbNo) {
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
}
