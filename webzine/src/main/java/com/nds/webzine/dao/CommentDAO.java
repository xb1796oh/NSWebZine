package com.nds.webzine.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.nds.webzine.dto.Comments;

@Mapper
@Repository
public interface CommentDAO {
	
	public Integer maxCommentsNo() throws Exception;
	public void insertComment(Comments comment) throws Exception;
	public Comments seletCommentByNo(int commentNo) throws Exception;
	public List<Comments> selectComments(Map<String, Object> replyMap) throws Exception;
	
	public Integer maxReplyNo(Map<String, Object> replyMap) throws Exception;
	public void insertReply(Comments comment) throws Exception;
	public void updateReplyCount(Map<String, Object> update) throws Exception;
	public List<Comments> selectReplyList(Map<String, Object> replyMap) throws Exception;
	
	/*
	public double subscribedRatio() throws Exception;
	public boolean memberCheck(Map<String, String> map) throws Exception;
	public boolean emailCheck(String email) throws Exception;
	public void updateSubscribe(Map<String, Object> map) throws Exception;
	public void updateUnSubscribe(String email) throws Exception;
	public List<String> selectSubscribedEmailList() throws Exception;
	*/
}
