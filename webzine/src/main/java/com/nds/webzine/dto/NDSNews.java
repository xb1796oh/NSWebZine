package com.nds.webzine.dto;

public class NDSNews {
	String link;
	String title;
	String thumbLink;
	
	public NDSNews(){}
	public NDSNews(String link, String title, String thumbLink){
		this.link = link;
		this.title = title;
		this.thumbLink = thumbLink;
	}
	
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumbLink() {
		return thumbLink;
	}
	public void setThumbLink(String thumbLink) {
		this.thumbLink = thumbLink;
	}
}
