package com.nds.webzine.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nds.webzine.dto.NDSNews;
import com.nds.webzine.service.WebZineService;

@Controller
public class TestController {
	
	@Autowired
	WebZineService apiservice;

	@GetMapping("main")
	public String main(Model model) {
		
		List<NDSNews> newslist = null;
		List<NDSNews> detaillist = null;
		try {
			newslist = apiservice.weeklyNewsList();
			detaillist = apiservice.NSNewsList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("newslist", newslist);
		model.addAttribute("detaillist", detaillist);

		return "index";
	}
	
	
	@ResponseBody
	@PostMapping(value="NSnews")
	public Map<String, Object> NSnewsList() {
		Map<String, Object> map = new HashMap<String, Object>();
  		List<NDSNews> NSnewsList = null;
		try {
			NSnewsList = apiservice.NSNewsList();
			map.put("list", NSnewsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
	
	@ResponseBody
	@PostMapping(value="NSpeople")
	public Map<String, Object> NSpeopleList() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<NDSNews> NSpeopleList = null;
		try {
			NSpeopleList = apiservice.forNSPeopleList();
			map.put("list", NSpeopleList);
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
			NSwithsList = apiservice.withList();
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
			NSeventsList = apiservice.eventList();
			map.put("list", NSeventsList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return map;
	}
}
