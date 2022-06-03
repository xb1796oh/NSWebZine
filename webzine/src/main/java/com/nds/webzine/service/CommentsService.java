package com.nds.webzine.service;

import java.util.List;

import com.nds.webzine.dto.Comments;

public interface CommentsService {
	public void createComment(Comments comment) throws Exception; 
	public List<Comments> showComments(int fbNo) throws Exception;
}
