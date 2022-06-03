package com.nds.webzine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nds.webzine.dto.Comments;
import com.nds.webzine.service.CommentsService;

@Controller
public class SubController {

	@Autowired
	CommentsService commentService;
	
	@ResponseBody
	@PostMapping(value="/writecomment")
	public String comment(@ModelAttribute Comments comment, Model model) {
		
		try {
			commentService.createComment(comment);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
