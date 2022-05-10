package com.nds.webzine.service;

import java.util.List;

import com.nds.webzine.dto.NDSNews;

public interface WebZineService {
	public List<NDSNews> weeklyNewsList() throws Exception;
	public List<NDSNews> forNSPeopleList() throws Exception;
	public List<NDSNews> withList() throws Exception;
}
