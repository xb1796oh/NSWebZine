package com.nds.webzine.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nds.webzine.dto.FreeBoard;
import com.nds.webzine.service.FreeBoardService;

@Controller
public class FreeBoardController {

	@Autowired
	FreeBoardService fbservice;
	
	@RequestMapping("/board")
	public String freeboard(Model model, HttpServletRequest request) {
		return "freeboard";
	}

	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	
	@PostMapping("/enrollFB")
	public String success(@ModelAttribute FreeBoard fb, Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		fb.setFbNo(UUID.randomUUID().toString());
		fb.setFbWriter(id);
		
		try {
			fbservice.insertFreeBoard(fb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "success";
	}
}
