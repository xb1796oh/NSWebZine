<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<title>NSZine</title>
    <link rel="icon" href="img/core-img/favicon.ico">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang&display=swap" rel="stylesheet">
	
	<style>
		.pointer { cursor:pointer; }
	</style>
</head>
<body>
	<!-- Header -->
    <header class="header-area">
        <div class="newsbox-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container-fluid">
                    <nav class="classy-navbar justify-content-between" id="newsboxNav">
                        <a href="http://localhost:8090/main" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>
						<div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>
						<div class="classy-menu">
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>
                            <div class="classynav">
                                <ul>
                                	<li><a class="pointer">Weekly News</a></li>
                                	<li>
                                		<c:choose >
                                			<c:when test="${id eq null }">
                                				<a href="${pageContext.request.contextPath}/login" class="pointer">login</a>
                                			</c:when>
                                			<c:otherwise>
                                				<a id="logout" class="pointer">logout</a>
                                			</c:otherwise>
                                		</c:choose>
                                	</li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
</body>
</html>