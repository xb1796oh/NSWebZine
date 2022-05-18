package com.nds.webzine.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nds.webzine.dao.MemberDAO;
import com.nds.webzine.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

	@Override
	public double subscribedRatio() throws Exception {
		return memberDAO.subscribedRatio();
	}

	@Override
	public String memberCheck(Map<String, String> login) throws Exception {
		if(memberDAO.memberCheck(login)==true) return "true";
		else return "false";
	}

	@Override
	public String emailCheck(String email) throws Exception {
		if(memberDAO.emailCheck(email)==true) return "true";
		else return "false";
	}
	
	@Override
	public void subscribe(String id, String email) throws Exception {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("email", email);
		memberDAO.updateSubscribe(map);
	}
	
	@Override
	public void unSubscribe(String email) throws Exception {
		memberDAO.updateUnSubscribe(email);
	}

	@Override
	public List<String> subscribedEmailList() throws Exception {
		return memberDAO.selectSubscribedEmailList();
	}
	
}
