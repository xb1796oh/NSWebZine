package com.nds.webzine.service;

import java.util.List;

import com.nds.webzine.dto.Comments;

public interface CommentsService {
	public Integer createComment(Comments comment) throws Exception; 
	public Comments seletCommentByNo(int commentNo) throws Exception; 
	public List<Comments> showComments(int fbNo) throws Exception;
	
	public Integer createReply(Comments comment) throws Exception; 
	public List<Comments> replyList(int fbNo, int parentCommentNo) throws Exception; 
	public Integer selectCommentNumByFbNo(int fbNo) throws Exception; 
	public Integer selectReplyNumByCommentNo(int parentCommentNo) throws Exception; 
}
