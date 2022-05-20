package com.nds.webzine.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nds.webzine.dao.FreeBoardDAO;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {
	
	@Autowired
	FreeBoardDAO freeboardDAO;

	@Override
	public void writeFreeBoard() throws Exception {
		
	}

	@Override
	public void readFreeBoard() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyFreeBoard() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteFreeBoard() throws Exception {
		// TODO Auto-generated method stub
		
	}

}
