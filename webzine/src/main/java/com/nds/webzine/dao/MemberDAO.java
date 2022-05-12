package com.nds.webzine.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.nds.webzine.dto.Member;

@Mapper
@Repository
public interface MemberDAO {
	public Member selectMember() throws Exception;
}
