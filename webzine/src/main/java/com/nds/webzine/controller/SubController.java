package com.nds.webzine.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nds.webzine.dto.Comments;
import com.nds.webzine.service.CommentsService;

@Controller
public class SubController {

	@Autowired
	CommentsService commentService;
	
	@ResponseBody
	@PostMapping(value="/writeComment")
	public Map<String, Object> writeComment(@ModelAttribute Comments comment, Model model) {
		
		Map<String, Object> result = new HashMap<>();
		Comments comm = null;
		Integer commentNo = null;
		Integer commentsNum = null;
		
		try {
			commentNo = commentService.createComment(comment);
			comm = commentService.seletCommentByNo(commentNo);
			commentsNum = commentService.selectCommentNumByFbNo(comment.getFbNo());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		result.put("comment", comm);
		result.put("commentNum", commentsNum);
		
		return result;
	}
	
	@ResponseBody
	@PostMapping(value="/writeReply")
	public Map<String, Object> writeReply(@ModelAttribute Comments comment, Model model, HttpServletRequest request) {
		
		Map<String, Object> result = new HashMap<>();
		Comments reply = null;
		Integer commentNo = null;
		Integer replysNum = null;
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		comment.setCommentWriter(id);
		
		try {
			commentNo = commentService.createReply(comment);
			reply = commentService.seletCommentByNo(commentNo);
			replysNum = commentService.selectReplyNumByCommentNo(comment.getParentCommentNo());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		result.put("reply", reply);
		result.put("replysNum", replysNum);
		
		return result;
	}
	
	@ResponseBody
	@PostMapping(value="/showReplyList")
	public ResponseEntity<List<Comments>> showReplyList(@RequestParam("fbNo") int fbNo, @RequestParam("parentCommentNo") int parentCommentNo) {
		
		ResponseEntity<List<Comments>> result = null;
		
		try {
			List<Comments> replyList = commentService.replyList(fbNo, parentCommentNo);
			result = new ResponseEntity<List<Comments>>(replyList, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@ResponseBody
	@PostMapping(value="/deleteReply")
	public Map<String, Object> deleteReply(@RequestParam("commentNo") int commentNo) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			result  = commentService.deleteReply(commentNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
