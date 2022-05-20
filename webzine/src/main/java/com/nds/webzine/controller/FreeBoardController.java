package com.nds.webzine.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FreeBoardController {

	@RequestMapping("/board")
	public String freeboard(Model model, HttpServletRequest request) {
		return "freeboard";
	}

	@RequestMapping("/write")
	public String write(Model model, HttpServletRequest request) {
		return "write";
	}
	
	@RequestMapping("/enrollFB")
	public String success(Model model, HttpServletRequest request) {
		return "success";
	}
}
