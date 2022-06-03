package com.nds.webzine.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.nds.webzine.dto.Comments;

@Mapper
@Repository
public interface CommentDAO {
	
	public Integer maxCommentsNo() throws Exception;
	public void insertComment(Comments comment) throws Exception;
	public List<Comments> selectComments(int fbNo) throws Exception;
	
	/*
	public double subscribedRatio() throws Exception;
	public boolean memberCheck(Map<String, String> map) throws Exception;
	public boolean emailCheck(String email) throws Exception;
	public void updateSubscribe(Map<String, Object> map) throws Exception;
	public void updateUnSubscribe(String email) throws Exception;
	public List<String> selectSubscribedEmailList() throws Exception;
	*/
}
