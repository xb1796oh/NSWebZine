package com.nds.webzine.controller;

import java.util.List;

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
	public Comments writeComment(@ModelAttribute Comments comment, Model model) {
		
		Comments result = null;
		Integer commentNo = null;
		
		try {
			commentNo = commentService.createComment(comment);
			result = commentService.seletCommentByNo(commentNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	@ResponseBody
	@PostMapping(value="/writeReply")
	public String writeReply(@ModelAttribute Comments comment, Model model, HttpServletRequest request) {
		
		Comments result = null;
		Integer commentNo = null;
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		comment.setCommentWriter(id);
		
		try {
			commentNo = commentService.createReply(comment);
			result = commentService.seletCommentByNo(commentNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
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
}
