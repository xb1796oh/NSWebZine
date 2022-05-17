package com.nds.webzine.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.nds.webzine.dto.Member;

@Mapper
@Repository
public interface MemberDAO {
	public Member selectMember() throws Exception;
	public boolean memberCheck(Map<String, String> map) throws Exception;
	public void updateSubscribe(Map<String, Object> map) throws Exception;
	public List<String> selectSubscribedEmailList() throws Exception;
}
