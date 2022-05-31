package com.nds.webzine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nds.webzine.dao.FreeBoardDAO;
import com.nds.webzine.dto.FreeBoard;
import com.nds.webzine.dto.PageInfo;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {
	
	@Autowired
	FreeBoardDAO freeboardDAO;

	@Override
	public void insertFreeBoard(FreeBoard fb) throws Exception {
		freeboardDAO.createFreeBoard(fb);
	}

	@Override
	public FreeBoard readFreeBoard(int fbNo) throws Exception {
		return freeboardDAO.readFreeBoard(fbNo);
	}

	@Override
	public void modifyFreeBoard(FreeBoard fb) throws Exception {
		freeboardDAO.updateFreeBoard(fb);		
	}

	@Override
	public void deleteFreeBoard(int fbNo) throws Exception {
		freeboardDAO.deleteFreeBoard(fbNo);
	}

	
	@Override
	public List<FreeBoard> freeboardList(int page, PageInfo pageInfo) throws Exception {
		
		int listCount = freeboardDAO.fbNum();
		int maxPage = (int)Math.ceil((double)listCount/10);
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		int endPage=startPage+10-1;
				
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
		
		int startrow = (page-1)*9;
		return freeboardDAO.fbList(startrow);
	}

	@Override
	public void updateViews(int fbNo) throws Exception {
		freeboardDAO.updateViews(fbNo);
	}

}
