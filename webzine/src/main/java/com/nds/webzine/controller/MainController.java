package com.nds.webzine.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nds.webzine.service.MemberService;

@Controller
public class MainController {
	
	@Autowired
	MemberService memberservice;

	@RequestMapping("/login")
	public String login(Model model, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		model.addAttribute("id", id);

		return "login";
	}

	@ResponseBody
	@PostMapping("/logout")
	public void logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.removeAttribute("id");
	}

	@ResponseBody
	@PostMapping("/loginCheck")
	public String loginCheck(@RequestParam Map<String, String> login, HttpServletRequest request) {

		String result = "";
		try {
			result = memberservice.memberCheck(login);
			if (result == "true") {
				HttpSession session = request.getSession();
				session.setAttribute("id", login.get("id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@ResponseBody
	@PostMapping("/subscribe")
	public void subscribe(HttpServletRequest request, @RequestParam(value = "email") String email) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		// 이메일 update
		try {
			memberservice.subscribe(id, email);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	@GetMapping("/unSubscribe")
	public String unsubscribe(HttpServletRequest request) {
		return "unsubscribe";
	}
	
	@ResponseBody
	@PostMapping("/emailCheck")
	public String emailCheck(@RequestParam(value = "email") String email) {

		String check, result = null;
		try {
			check = memberservice.emailCheck(email);
			
			if(check=="true") {
				memberservice.unSubscribe(email);
				result = "success";
			} else if(check=="false") {
				result = "fail";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
