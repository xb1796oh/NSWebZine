package com.nds.webzine.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nds.webzine.dao.CommentDAO;
import com.nds.webzine.dto.Comments;

@Service
public class CommentsServiceImpl implements CommentsService {

	@Autowired
	CommentDAO commentDAO;
	
	@Override
	public Integer createComment(Comments comment) throws Exception {
		
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
		return commentNo;
	}

	@Override
	public Comments seletCommentByNo(int commentNo) throws Exception {
		return commentDAO.seletCommentByNo(commentNo);
	}
	
	@Override
	public List<Comments> showComments(int fbNo) throws Exception {
		Map<String, Object> commentsMap = new HashMap<String, Object>();
		commentsMap.put("fbNo", fbNo);
		commentsMap.put("replyDepth", 0);
		
		return commentDAO.selectComments(commentsMap);
	}
	
	@Override
	public Integer createReply(Comments reply) throws Exception {
		
		// comment 번호 PK 설정
		Integer commentNo = commentDAO.maxCommentsNo();
		if(commentNo==null) {
			commentNo = 1;
		} else {
			commentNo++;
			reply.setCommentNo(commentNo);
		}
		
		// 대댓글 순서번호 지정
		Map<String, Object> replyNoMap = new HashMap<String, Object>();
		replyNoMap.put("fbNo", reply.getFbNo());
		replyNoMap.put("parentCommentNo", reply.getParentCommentNo());
		
		Integer replyNo = commentDAO.maxReplyNo(replyNoMap);
		if(replyNo==null) {
			replyNo = 1;
		} else {
			replyNo++;
		}
		reply.setReplyNo(replyNo);
		reply.setReplyCount(0);
		
		// 댓글 저장
		commentDAO.insertReply(reply);
		
		// 댓글 replyCount update
		Map<String, Object> commentUpdate = new HashMap<String, Object>();
		commentUpdate.put("parentCommentNo", reply.getParentCommentNo());
		commentUpdate.put("method", "plus");
		
		commentDAO.updateReplyCount(commentUpdate);
		
		return commentNo;
	}

	@Override
	public List<Comments> replyList(int fbNo, int parentCommentNo) throws Exception {
		Map<String, Object> replySort = new HashMap<String, Object>();
		replySort.put("fbNo", fbNo);
		replySort.put("parentCommentNo", parentCommentNo);
		return commentDAO.selectReplyList(replySort);
	}

	@Override
	public Integer selectCommentNumByFbNo(int fbNo) throws Exception {
		return commentDAO.selectCommentNumByFbNo(fbNo);
	}

	@Override
	public Integer selectReplyNumByCommentNo(int parentCommentNo) throws Exception {
		return commentDAO.selectReplyNumByCommentNo(parentCommentNo);
	}

	@Override
	public Map<String, Object> deleteReply(int commentNo) throws Exception {
	
		Comments reply = commentDAO.seletCommentByNo(commentNo);
		Integer replysNum = null;
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("depth", reply.getReplyDepth());
		result.put("parentNo", reply.getParentCommentNo());
		
		// depth=0일 때
		if(reply.getReplyDepth()==0) {
			commentDAO.deleteReplies(commentNo);
			commentDAO.deleteReplyByNo(commentNo);
			replysNum = commentDAO.selectCommentNumByFbNo(reply.getFbNo());
		}
		// depth=1일 때
		else if(reply.getReplyDepth()==1) {
			commentDAO.deleteReplyByNo(commentNo);
			
			// 댓글 replyCount update
			Map<String, Object> commentUpdate = new HashMap<String, Object>();
			commentUpdate.put("parentCommentNo", reply.getParentCommentNo());
			commentUpdate.put("method", "minus");
			commentDAO.updateReplyCount(commentUpdate);
			
			replysNum = commentDAO.selectReplyNumByCommentNo(reply.getParentCommentNo());
		}
		
		result.put("replysNum", replysNum);
		return result;
	}

	
	
}