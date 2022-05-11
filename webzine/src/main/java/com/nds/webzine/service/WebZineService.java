package com.nds.webzine.service;

import java.util.List;

import com.nds.webzine.dto.NDSNews;

public interface WebZineService {
	public List<NDSNews> weeklyNewsList() throws Exception;		// 주간영상뉴스
	public List<NDSNews> NSNewsList() throws Exception;			// 농심뉴스
	public List<NDSNews> forNSPeopleList() throws Exception;	// 농심인뉴스
	public List<NDSNews> withList() throws Exception;			// 봉사
	public List<NDSNews> eventList() throws Exception;			// 이벤트
}
