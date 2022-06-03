package com.nds.webzine.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nds.webzine.dao.CommentDAO;
import com.nds.webzine.dto.Comments;

@Service
public class CommentsServiceImpl implements CommentsService {

	@Autowired
	CommentDAO commentDAO;
	
	@Override
	public void createComment(Comments comment) throws Exception {
		
		// comment 번호 PK 설정
		Integer commentNo = commentDAO.maxCommentsNo();
		if(commentNo==null) {
			commentNo = 1;
		} else {
			commentNo++;
			comment.setCommentNo(commentNo);
		}
		
		// insert
		commentDAO.insertComment(comment);
	}

	@Override
	public List<Comments> showComments(int fbNo) throws Exception {
		return commentDAO.selectComments(fbNo);
	}

	
}