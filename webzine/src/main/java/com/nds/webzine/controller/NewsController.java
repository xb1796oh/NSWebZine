package com.nds.webzine.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nds.webzine.dto.NDSNews;
import com.nds.webzine.dto.PageInfo;
import com.nds.webzine.service.MemberService;
import com.nds.webzine.service.WebZineService;

@Controller
public class NewsController {

	@Autowired
	WebZineService apiservice;
	
	@Autowired
	MemberService memberservice;

	@RequestMapping({ "/", "/main" })
	public String main(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		List<NDSNews> newslist = null;
		List<NDSNews> detaillist = null;
		double ratio = 0.0;
		try {
			newslist = apiservice.weeklyNews6List();
			detaillist = apiservice.NSNews6List();
			ratio = memberservice.subscribedRatio();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("id", id);
		model.addAttribute("newslist", newslist);
		model.addAttribute("detaillist", detaillist);
		model.addAttribute("ratio", ratio);
		
		return "index";
	}

	@RequestMapping("/newslist")
	public ModelAndView newslist(@RequestParam(value = "section", required = false) String section,
			@RequestParam(value = "page", required = false) int page) {
		ModelAndView mv = new ModelAndView("newslist");
		List<NDSNews> newsList = null;
		PageInfo pageInfo = new PageInfo();

		try {
			switch (section) {
			case "nav1":
				newsList = apiservice.weeklyNewsList(page, pageInfo);
				mv.addObject("pageInfo", pageInfo);
				mv.addObject("newslist", newsList);
				mv.addObject("count", newsList.size());
				break;
			case "nav2":
				newsList = apiservice.NSNewsList(page, pageInfo);
				mv.addObject("pageInfo", pageInfo);
				mv.addObject("newslist", newsList);
				mv.addObject("count", newsList.size());
				break;
			case "nav3":
				newsList = apiservice.forNSPeopleList(page, pageInfo);
				mv.addObject("pageInfo", pageInfo);
				mv.addObject("newslist", newsList);
				mv.addObject("count", newsList.size());
				break;
			case "nav4":
				newsList = apiservice.withList(page, pageInfo);
				mv.addObject("pageInfo", pageInfo);
				mv.addObject("newslist", newsList);
				mv.addObject("count", newsList.size());
				break;
			case "nav5":
				newsList = apiservice.eventList(page, pageInfo);
				mv.addObject("pageInfo", pageInfo);
				mv.addObject("newslist", newsList);
				mv.addObject("count", newsList.size());
				break;
			}

			mv.addObject("section", section);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mv;
	}
	
	@ResponseBody
	@PostMapping(value="NSnews")
	public Map<String, Object> NSnewsList() {
		Map<String, Object> map = new HashMap<String, Object>();
  		List<NDSNews> NSnewsList = null;
		try {
			NSnewsList = apiservice.NSNews6List();
			map.put("list", NSnewsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	@ResponseBody
	@PostMapping(value="NSPeople")
	public Map<String, Object> enjoyNSList() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NDSNews> enjoyNSList = null;
		try {
			enjoyNSList = apiservice.forNSPeople6List();
			map.put("list", enjoyNSList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	@ResponseBody
	@PostMapping(value="NSwith")
	public Map<String, Object> NSwithsList() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NDSNews> NSwithsList = null;
		try {
			NSwithsList = apiservice.with6List();
			map.put("list", NSwithsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	@ResponseBody
	@PostMapping(value="NSevents")
	public Map<String, Object> NSeventsList() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NDSNews> NSeventsList = null;
		try {
			NSeventsList = apiservice.event6List();
			map.put("list", NSeventsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
}
