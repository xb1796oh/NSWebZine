package com.nds.webzine.dto;

public class FreeBoard {
	String fbNo;
	String fbWrier;
	String title;
	String contents;
	boolean secret;
	
	public String getFbNo() {
		return fbNo;
	}
	public void setFbNo(String fbNo) {
		this.fbNo = fbNo;
	}
	public String getFbWrier() {
		return fbWrier;
	}
	public void setFbWrier(String fbWrier) {
		this.fbWrier = fbWrier;
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
