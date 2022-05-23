package com.nds.webzine.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.nds.webzine.dto.FreeBoard;

@Mapper
@Repository
public interface FreeBoardDAO {
	public void createFreeBoard(FreeBoard fb) throws Exception;
	public FreeBoard readFreeBoard(int fbNo) throws Exception;
	public void updateFreeBoard() throws Exception;
	public void deleteFreeBoard() throws Exception;
	
	public int fbNum() throws Exception;
	public List<FreeBoard> fbList(int startrow) throws Exception;
}
 