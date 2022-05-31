package com.nds.webzine.service;

import java.util.List;

import com.nds.webzine.dto.FreeBoard;
import com.nds.webzine.dto.PageInfo;

public interface FreeBoardService {
	public void insertFreeBoard(FreeBoard fb) throws Exception;
	public FreeBoard readFreeBoard(int fbNo) throws Exception;
	public void modifyFreeBoard(FreeBoard fb) throws Exception;
	public void deleteFreeBoard(int fbNo) throws Exception;
	
	public List<FreeBoard> freeboardList(int page, PageInfo pageInfo) throws Exception;
	public void updateViews(int fbNo) throws Exception;
}
