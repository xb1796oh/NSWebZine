package com.nds.webzine.service;

import java.util.List;
import java.util.Map;

public interface MemberService {
	public double subscribedRatio() throws Exception;	//
	public String memberCheck(Map<String, String> login) throws Exception;	
	public String emailCheck(String email) throws Exception;
	public void subscribe(String id, String email) throws Exception;	
	public void unSubscribe(String email) throws Exception;
	public List<String> subscribedEmailList() throws Exception;
}
