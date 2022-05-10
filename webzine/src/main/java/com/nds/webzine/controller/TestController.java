package com.nds.webzine.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.nds.webzine.dto.NDSNews;
import com.nds.webzine.service.WebZineService;

@Controller
public class TestController {
	
	@Autowired
	WebZineService apiservice;

	@GetMapping("main")
	public String main(Model model) throws IOException {
		
		List<NDSNews> newslist = null;
		try {
			newslist = apiservice.forNSPeopleList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("newslist", newslist);

		return "index";
	}
}
