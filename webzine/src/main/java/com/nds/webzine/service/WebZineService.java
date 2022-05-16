package com.nds.webzine.service;

import java.util.List;

import com.nds.webzine.dto.NDSNews;
import com.nds.webzine.dto.PageInfo;

public interface WebZineService {
	public List<NDSNews> weeklyNews6List() throws Exception;	// 주간영상뉴스 latest6
	public List<NDSNews> NSNews6List() throws Exception;		// 농심뉴스 latest6
	public List<NDSNews> forNSPeople6List() throws Exception;	// 농심인뉴스 latest6
	public List<NDSNews> with6List() throws Exception;			// 봉사 latest6
	public List<NDSNews> event6List() throws Exception;			// 이벤트 latest6
	
	public List<NDSNews> weeklyNewsList(int page, PageInfo pageInfo) throws Exception;		// 주간영상뉴스
	public List<NDSNews> NSNewsList(int page, PageInfo pageInfo) throws Exception;			// 농심뉴스
	public List<NDSNews> forNSPeopleList(int page, PageInfo pageInfo) throws Exception;		// 농심인뉴스
	public List<NDSNews> withList(int page, PageInfo pageInfo) throws Exception;			// 봉사
	public List<NDSNews> eventList(int page, PageInfo pageInfo) throws Exception;			// 이벤트
	
	public void subscribeMail();
}
