package com.nds.webzine.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.nds.webzine.dto.MailHandler;

@Component
public class EmailService {
	
	@Autowired
	private JavaMailSender sender;
	
	@Autowired
	MemberService memberservice;
	
	//@Scheduled(cron = "0 30 8 * * 1")
	@Scheduled(cron = "30 40 15 * * *")
	public void sendWeeklylNews() {
		
		String apiUrl = "https://nzin.nongshim.com/api/nz_webzine.php?rows=10&type=json";

		HttpURLConnection conn = null;
		StringBuffer response = new StringBuffer();

		// URL 설정
		URL url = null;
		try {
			url = new URL(apiUrl);
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		try {
			conn = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// Request 형식 설정
		try {
			conn.setRequestMethod("GET");
		} catch (ProtocolException e) {
			e.printStackTrace();
		}
		conn.setRequestProperty("X-Requested-With", "curl");
		conn.setDoOutput(true);

		// 보내고 결과값 받기
		int responseCode = 0;
		try {
			responseCode = conn.getResponseCode();
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (responseCode == 400) {
			System.out.println("400:: 해당 명령을 실행할 수 없음");
		} else if (responseCode == 401) {
			System.out.println("401:: Authorization가 잘못됨");
		} else if (responseCode == 500) {
			System.out.println("500:: 서버 에러, 문의 필요");
		} else { // 성공 후 응답 JSON 데이터받기
			Charset charset = Charset.forName("UTF-8");
			BufferedReader br = null;
			try {
				br = new BufferedReader(new InputStreamReader(conn.getInputStream(), charset));
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			
			String inputLine;
			try {
				while ((inputLine = br.readLine()) != null) {
					response.append(inputLine);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		String jsonString = response.toString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		String newslink = null;
		String thumbImg = null;
		String title = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			if(obj.get("title").toString().contains("주간영상")) {
				title = obj.get("title").toString();
				thumbImg = obj.get("thumbLink").toString();
				newslink = obj.get("link").toString();
				break;
			}
		}
		String html = "<h1>" + title + "</h1>";
		html += "<a href='" + newslink + "'><img src='" + thumbImg + "'></a>";
		
		try {
			MailHandler mail =  new MailHandler(sender);
			mail.setFrom("vhqltkfkd24@gmail.com", "조예선");
			mail.setSubject(title);
			mail.setText(new StringBuffer().append(html)
				    .append("<p>위의 이미지를 클릭하면 해당페이지로 이동합니다.</p>")
				    .append("<p>본 메일은 vhqltkfkd24@gmail에 의해 전송됩니다.<br>농심 주간영상뉴스을 더이상 받기를 원하시면 <a href=\"http://localhost:8090/unSubscribe\">구독취소</a>를 눌러주세요.</p>")
				    .toString()
				  );
			
			List<String> emailLists = memberservice.subscribedEmailList();
			for(int i=0; i<emailLists.size(); i++) {
				mail.setTo(emailLists.get(i));
				mail.send();
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
