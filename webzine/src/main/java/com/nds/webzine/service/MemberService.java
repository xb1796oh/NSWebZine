package com.nds.webzine.service;

import java.util.Map;

import com.nds.webzine.dto.Member;

public interface MemberService {
	public Member test();
	
	public String memberCheck(Map<String, String> login) throws Exception;	
	public void subscribe(String id, String email) throws Exception;	
}
