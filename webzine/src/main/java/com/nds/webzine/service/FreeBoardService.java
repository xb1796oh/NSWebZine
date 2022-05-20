package com.nds.webzine.service;

import com.nds.webzine.dto.FreeBoard;

public interface FreeBoardService {
	public void insertFreeBoard(FreeBoard fb) throws Exception;
	public void readFreeBoard() throws Exception;
	public void modifyFreeBoard() throws Exception;
	public void deleteFreeBoard() throws Exception;
}
