package com.nds.webzine.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface FreeBoardDAO {
	public void createFreeBoard() throws Exception;
	public void readFreeBoard() throws Exception;
	public void updateFreeBoard() throws Exception;
	public void deleteFreeBoard() throws Exception;
}
