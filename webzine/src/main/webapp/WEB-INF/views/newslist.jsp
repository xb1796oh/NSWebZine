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
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Newsbox - Modern Magazine &amp; Newspaper HTML Template</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="style.css">

</head>

<body>

    <jsp:include page="header.jsp" flush="true"/>
    
    <!-- ##### Breaking News Area Start ##### -->
    <section class="breaking-news-area clearfix">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <!-- Breaking News Widget -->
                    <div class="breaking-news-ticker d-flex flex-wrap align-items-center">
                        <div class="title">
                            <h6>Trending</h6>
                        </div>
                        <div id="breakingNewsTicker" class="ticker">
                            <ul>
                                <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum.</a></li>
                                <li><a href="#">Welcome to Colorlib Family.</a></li>
                                <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breaking News Area End ##### -->
    
    <!-- ##### Catagory Featured Area Start ##### -->
    <div class="catagory-featured-post bg-overlay clearfix" style="background-image: url(img/bg-img/23.jpg)">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12 col-lg-9">
                    <!-- Post Content -->
                    <div class="post-content">
                        <p class="tag"><span>Entertainment</span></p>
                        <a href="#" class="post-title">Top 10 <br>Summer Festivals</a>
                        <p>Nullam lacinia ex eleifend orci porttitor, suscipit interdum augue condimentum. Etiam pretium turpis eget nibh laoreet iaculis. Proin ac urna at lectus volutpat lobortis. Vestibulum venenatis iaculis diam vitae lobortis. Donec tincidunt viverra elit, sed consectetur est pr etium ac. Mauris nec mauris tellus. </p>
                        <span class="post-date">June 20, 2018</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Catagory Featured Area End ##### -->
    
    <!-- ##### Intro News Area Start ##### -->
    <section class="intro-news-area section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Intro News Tabs Area -->
                <div class="col-12">
                    <div class="intro-news-tab">
                        <!-- Intro News Filter -->
                        <div class="intro-news-filter d-flex justify-content-between">
                            <h6>All the news</h6>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav1" data-toggle="tab" href="http://localhost:8090/newslist?section=nav1" role="tab" aria-controls="nav-1" aria-selected="true">주간영상뉴스</a>
                                    <a class="nav-item nav-link" id="nav2" data-toggle="tab" href="http://localhost:8090/newslist?section=nav2" role="tab" aria-controls="nav-2" aria-selected="false">NS NEWS</a>
                                    <a class="nav-item nav-link" id="nav3" data-toggle="tab" href="${pageContext.request.contextPath}/newslist?section=nav3" role="tab" aria-controls="nav-3" aria-selected="false">NS PEOPLE</a>
                                    <a class="nav-item nav-link" id="nav4" data-toggle="tab" href="${pageContext.request.contextPath}/newslist?section=nav4" role="tab" aria-controls="nav-4" aria-selected="false">WITH</a>
                                    <a class="nav-item nav-link" id="nav5" data-toggle="tab" href="${pageContext.request.contextPath}/newslist?section=nav5" role="tab" aria-controls="nav-5" aria-selected="false">EVENTS</a>
                                </div>
                            </nav>
                        </div>
					</div>
                </div>
			</div>
        
        	<div class="row">
        	<c:choose>
        	<c:when test="${newslist !=null }">
        		<div class="col-12">
        		<c:forEach items="${newslist }" var="news">
        			<!-- Single News Area -->
        			<div class="single-blog-post d-flex flex-wrap style-5 mb-30">
                        <!-- Blog Thumbnail -->
                        <div class="blog-thumbnail">
                            <a href="${news.link }"><img src="${news.thumbLink }" alt=""></a>
                        </div>

                        <!-- Blog Content -->
                        <div class="blog-content">
                            <span class="post-date">June 20, 2018</span>
                            <a href="${news.link }" class="post-title">${news.title }</a>
                            <a href="${news.link }" class="post-author">By Michael Smith</a>
                            <p>Nullam lacinia ex eleifend orci porttitor, suscipit interdum augue condimentum. Etiam pretium turpis eget nibh laoreet iaculis. Proin ac urna at lectus.</p>
                        </div>
                    </div>
        		</c:forEach>
        		</div>
        		<div class="col-12">
        		<div id="pageList" style="text-align: center; margin-top:30px; margin-bottom :30px;">
				<c:choose>
					<c:when test="${pageInfo.page<=1}">«&nbsp;</c:when>
					<c:otherwise><a href="route?page=${pageInfo.page-1}">«&nbsp;</a></c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
					<c:choose>
						<c:when test="${pageInfo.page==i }">${i}&nbsp;</c:when>
						<c:otherwise><a href="route?page=${i}">${i}&nbsp;</a></c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pageInfo.page>=pageInfo.maxPage }">»&nbsp;</c:when>
					<c:otherwise><a href="route?page=${pageInfo.page+1}">»&nbsp;</a></c:otherwise>
				</c:choose>
				</div>
				</div>
        	</c:when>
        	<c:otherwise>
        		<section id="emptyArea" style="text-align: center; margin-top:30px; margin-bottom :30px; vertical-align: middle;">등록된 글이 없습니다.</section>
        		<div class="col-12">
        		<div id="pageList" style="text-align: center; margin-top:30px; margin-bottom :30px;">
				<c:choose>
					<c:when test="${pageInfo.page<=1}">«&nbsp;</c:when>
					<c:otherwise><a href="route?page=${pageInfo.page-1}">«&nbsp;</a></c:otherwise>
				</c:choose>
				<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
					<c:choose>
						<c:when test="${pageInfo.page==i }">${i}&nbsp;</c:when>
						<c:otherwise><a href="route?page=${i}">${i}&nbsp;</a></c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${pageInfo.page>=pageInfo.maxPage }">»&nbsp;</c:when>
					<c:otherwise><a href="route?page=${pageInfo.page+1}">»&nbsp;</a></c:otherwise>
				</c:choose>
				</div>
				</div>
        		
        	</c:otherwise>		
        	</c:choose>
            </div>
        
        </div>
    </section>
    <!-- ##### Intro News Area End ##### -->
    
   

	<!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
</body>
</html>