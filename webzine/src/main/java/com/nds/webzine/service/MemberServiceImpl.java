package com.nds.webzine.service;

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
	public Member test() {
		Member mem = null;
		try {
			mem = memberDAO.selectMember();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mem;
	}

	@Override
	public String memberCheck(Map<String, String> login) throws Exception {
		if(memberDAO.memberCheck(login)==true) return "true";
		else return "false";
	}
}
