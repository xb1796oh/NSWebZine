package com.nds.webzine.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nds.webzine.dto.FreeBoard;
import com.nds.webzine.dto.PageInfo;
import com.nds.webzine.service.FreeBoardService;

@Controller
public class FreeBoardController {

	@Autowired
	FreeBoardService fbservice;
	
	@RequestMapping("/board")
	public ModelAndView freeboard(Model model, HttpServletRequest request,
			@RequestParam(value = "page", required = false) int page) {
		ModelAndView mv = new ModelAndView("freeboard");
		List<FreeBoard> fbList = null;
		PageInfo pageInfo = new PageInfo();
		
		try {
			fbList = fbservice.freeboardList(page, pageInfo);
			mv.addObject("fblist", fbList);
			mv.addObject("pageInfo", pageInfo);
			mv.addObject("size", fbList.size());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}

	@RequestMapping("/write")
	public String write() {
		return "write";
	}
	
	@RequestMapping("/read")
	public ModelAndView read(int fbNo) {
		
		ModelAndView mv = new ModelAndView("read");
		try {
			FreeBoard fb = fbservice.readFreeBoard(fbNo);
			mv.addObject("fb", fb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}
	
	@PostMapping("/enrollFB")
	public String success(@ModelAttribute FreeBoard fb, Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		fb.setFbWriter(id);
		
		try {
			fbservice.insertFreeBoard(fb);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "success";
	}
}
