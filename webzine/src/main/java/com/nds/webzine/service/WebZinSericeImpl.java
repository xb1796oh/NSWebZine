package com.nds.webzine.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.nds.webzine.dto.NDSNews;
import com.nds.webzine.dto.PageInfo;

@Service
public class WebZinSericeImpl implements WebZineService {
	
	@Autowired
	private JavaMailSender javaMailSender;
	
	private String apiJsonString() {
		String apiUrl = "https://nzin.nongshim.com/api/nz_webzine.php?rows=10000&type=json";

		HttpURLConnection conn = null;
		StringBuffer response = new StringBuffer();

		// URL 설정
		URL url = null;
		try {
			url = new URL(apiUrl);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
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

		// request에 JSON data 준비
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
				// TODO Auto-generated catch block
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
		return response.toString();
	}

	private int weeklyNewsCount() {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = 0;
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("주간영상")) {
				listCount++;
			}
		}
		
		return listCount;
	}
	
	private int NSNewsCount() {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = 0;
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("농심")) {
				listCount++;
			}
		}
		
		return listCount;
	}
	
	private int forNSPeopleCount() {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = 0;
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("농심인") || title.contains("직장인")) {
				listCount++;
			}
		}
		return listCount;
	}
	
	private int withCount() {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = 0;
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("소아암") || title.contains("공헌")) {
				listCount++;
			}
		}
		
		return listCount;
	}

	private int eventCount() {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = 0;
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("이벤트") || title.contains("추천") || title.contains("경품") || title.contains("퀴즈")) {
				listCount++;
			}
		}
		
		return listCount;
	}
	
	/* latest news  list */
	
	@Override
	public List<NDSNews> weeklyNews6List() throws Exception {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("주간영상")) {
				NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
				newslist.add(news);
			}
			
			if(newslist.size()==6) break;
		}
		return newslist;
	}
	
	public List<NDSNews> NSNews6List() throws Exception {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = 0;
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("농심")) {
				listCount++;
				NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
				newslist.add(news);
			}
			
			if(listCount==6) break;
		}
		return newslist;
	}
	
	@Override
	public List<NDSNews> forNSPeople6List() throws Exception {
		
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}

		List<NDSNews> newslist = new ArrayList<NDSNews>();
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("농심인") || title.contains("직장인")) {
				NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
				newslist.add(news);
			}
			
			if(newslist.size()==6) break;
		}
		
		return newslist;
	}

	@Override
	public List<NDSNews> with6List() throws Exception {
		
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}

		List<NDSNews> newslist = new ArrayList<NDSNews>();
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("소아암") || title.contains("공헌")) {
				NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
				newslist.add(news);
			}
			
			if(newslist.size()==6) break;
		}
		
		return newslist;
	}

	@Override
	public List<NDSNews> event6List() throws Exception {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}

		List<NDSNews> newslist = new ArrayList<NDSNews>();
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("이벤트") || title.contains("추천") || title.contains("경품") || title.contains("퀴즈")) {
				NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
				newslist.add(news);
			}
			
			if(newslist.size()==6) break;
		}
		
		return newslist;
	}

	/* news paging list */
	
	@Override
	public List<NDSNews> weeklyNewsList(int page, PageInfo pageInfo) throws Exception {
	
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}

		int listCount = weeklyNewsCount();
		int maxPage = (int)Math.ceil((double)listCount/10);
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		int endPage=startPage+10-1;
				
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
				
		int row =0;
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("주간영상")) {
				row++;
				if(row >= (page-1)*10 && row < page*10 ) {
					NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
					newslist.add(news);
				}
			}
		}
		return newslist;
	}
	
	@Override
	public List<NDSNews> NSNewsList(int page, PageInfo pageInfo) throws Exception {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = NSNewsCount();
		int maxPage = (int)Math.ceil((double)listCount/10);
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		int endPage=startPage+10-1;
				
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
				
		int row =0;
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("농심")) {
				row++;
				if(row >= (page-1)*10 && row < page*10 ) {
					NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
					newslist.add(news);
				}
			}
		}
		return newslist;
	}
	
	@Override
	public List<NDSNews> forNSPeopleList(int page, PageInfo pageInfo) throws Exception {
		
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}

		int listCount = forNSPeopleCount();
		int maxPage = (int)Math.ceil((double)listCount/10);
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		int endPage=startPage+10-1;
				
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
				
		int row = 0;
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("농심인") || title.contains("직장인")) {
				row++;
				if(row >= (page-1)*10 && row < page*10 ) {
					NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
					newslist.add(news);
				}
			}
		}
		
		return newslist;
	}

	@Override
	public List<NDSNews> withList(int page, PageInfo pageInfo) throws Exception {
		
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}

		int listCount = withCount();
		int maxPage = (int)Math.ceil((double)listCount/10);
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		int endPage=startPage+10-1;
				
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
				
		int row = 0;
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("소아암") || title.contains("공헌")) {
				row++;
				if(row >= (page-1)*10 && row < page*10 ) {
					NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
					newslist.add(news);
				};
			}
		}
		return newslist;
	}

	@Override
	public List<NDSNews> eventList(int page, PageInfo pageInfo) throws Exception {
		String jsonString = apiJsonString();
		JSONParser parser = new JSONParser();
		JSONObject parserObj = null;
		try {
			parserObj = (JSONObject) parser.parse(jsonString);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		JSONArray arr = null;
		try {
			arr = (JSONArray) parser.parse(parserObj.get("array").toString());
		} catch (ParseException e) {
			System.out.println("변환에 실패");
			e.printStackTrace();
		}
		
		int listCount = eventCount();
		int maxPage = (int)Math.ceil((double)listCount/10);
		int startPage=(((int) ((double)page/10+0.9))-1)*10+1;
		int endPage=startPage+10-1;
				
		if(endPage>maxPage) endPage=maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
		
		int row = 0;
		List<NDSNews> newslist = new ArrayList<NDSNews>();
		for (int i = 0; i < arr.size(); i++) {
			JSONObject obj = null;
			try {
				obj = (JSONObject) parser.parse(arr.get(i).toString());
			} catch (ParseException e) {
				e.printStackTrace();
			}
			String title = obj.get("title").toString();
			if(title.contains("이벤트") || title.contains("추천") || title.contains("경품") || title.contains("퀴즈")) {
				row++;
				if(row >= (page-1)*10 && row < page*10 ) {
					NDSNews news = new NDSNews(obj.get("link").toString(), obj.get("title").toString(), obj.get("thumbLink").toString());
					newslist.add(news);
				};
			}
		}
		
		return newslist;
	}

	
	
	@Override
	public void subscribeMail() {
		
		SimpleMailMessage simpleMessage = new SimpleMailMessage();
		simpleMessage.setTo("vhqlgkxm24@naver.com");
		simpleMessage.setSubject("sample");
		simpleMessage.setText("text");
		
		javaMailSender.send(simpleMessage);
	}

	

	
	
	
}
