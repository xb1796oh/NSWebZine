package com.nds.webzine.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface MemberDAO {
	public double subscribedRatio() throws Exception;
	public boolean memberCheck(Map<String, String> map) throws Exception;
	public boolean emailCheck(String email) throws Exception;
	public void updateSubscribe(Map<String, Object> map) throws Exception;
	public void updateUnSubscribe(String email) throws Exception;
	public List<String> selectSubscribedEmailList() throws Exception;
}
