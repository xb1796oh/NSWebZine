<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>hello</h2>
	
	<c:forEach var="thumb" items="${thumbs }">
		<p><img src="${thumb }" /></p>
	</c:forEach>
</body>
</html>