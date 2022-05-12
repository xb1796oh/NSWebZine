package com.nds.webzine.service;

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
		System.out.println(mem.getEmail());
		return mem;
	}

}
