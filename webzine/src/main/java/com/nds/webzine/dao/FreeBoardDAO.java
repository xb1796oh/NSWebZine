package com.nds.webzine.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.nds.webzine.dto.FreeBoard;

@Mapper
@Repository
public interface FreeBoardDAO {
	public void createFreeBoard(FreeBoard fb) throws Exception;
	public void readFreeBoard() throws Exception;
	public void updateFreeBoard() throws Exception;
	public void deleteFreeBoard() throws Exception;
}
