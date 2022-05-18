<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	
	<style>
		.pointer { cursor:pointer; }
	</style>
</head>
<body>    
    <jsp:include page="header.jsp" flush="true"/>
    
    <!-- Video -->
    <section class=" bg-img bg-overlay bg-fixed" style="background-image:url(https://imgs.jobkorea.co.kr/img3/_thumb/0x390/Company/Visual_Co/images/2019/2/JK_CO_nscom0805_1.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="featured-video-area d-flex align-items-center justify-content-center"></div>
                </div>
            </div>
        </div>
    </section>

	<!-- Weekly News -->
    <div class="top-news-area section-padding-100">
        <div class="container">
            <div class="row">
            	<div class="col-12 single-widget-area mb-30 text-center">
                	<h3>Weekly News</h3>
                    <p class="mt-30">Nullam lacinia ex eleifend orci porttitor, suscipit interdum augue condimentum. Etiam pretium turpis eget nibh . volutpat lobortis.</p>
                </div>
            
				<c:forEach var="news" items="${newslist }">
					<div class="col-12 col-sm-6 col-lg-4">
                    	<div class="single-blog-post style-2 mb-5">
                        	<div class="blog-thumbnail">
                            	<a href="${news.link }"><img src="${news.thumbLink }" alt=""></a>
                        	</div>
                        	<div class="blog-content">
                            	<a href="${news.link }" class="post-title">${news.title }</a>
                        	</div>
                    	</div>
                	</div>
				</c:forEach>
				
				<div class="col-12">
					<p class="pointer" style="float:right;"><a href="${pageContext.request.contextPath}/newslist?section=nav1&page=1">show more   >></a></p>
				</div>
            </div>
        </div>
    </div>

	<!-- Add -->
    <div class="big-add-area mb-100">
        <div class="container-fluid" style="width:1677px; height:237px; overflow: hidden; position:relative;">
       		<div>
       			<img src="https://www.hotelnongshim.com/kr/_Img/main_1540462725.jpg" style="position:absolute; top:-100%;" alt="" >
       		</div>
            <div style="position: absolute; op: 0px; width: 100%; height: 100%;">
            	<div style="display:table; width:100%; height:100%;">
            		<div style="display:table-row;">
            			<div style="display: table-cell; vertical-align: middle; cursor:pointer;" onclick="location.href='http://www.hotelnongshim.com'">
            				<p style="text-align: center; font-size:40px; color:white; font-family: 'Gowun Batang', serif;">그곳, 호텔농심</p>
            				<p style="text-align: center; font-size:20px; color:white; font-family: 'Gowun Batang', serif;">신선한 공기와 맑은 온천수를 벗삼아 휴식을 취하는 곳 </p>
            			</div>
            		</div>
            	</div>
            </div>
        </div>
    </div>

	<!-- ##### Intro News Area Start ##### -->
    <section class=" section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Intro News Tabs Area -->
                <div class="col-12 col-lg-8">
                    <div class="intro-news-tab">

                        <!-- Intro News Filter -->
                        <div class="intro-news-filter d-flex justify-content-between">
                            <h6>All the news</h6>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav2" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-1" aria-selected="true">NS News</a>
                                    <a class="nav-item nav-link" id="nav3" data-toggle="tab" href="#nav-2" role="tab" aria-controls="nav-2" aria-selected="false">NS People</a>
                                    <a class="nav-item nav-link" id="nav4" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">With</a>
                                    <a class="nav-item nav-link" id="nav5" data-toggle="tab" href="#nav-4" role="tab" aria-controls="nav-4" aria-selected="false">Events</a>
                                </div>
                            </nav>
                        </div>

                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-1" role="tabpanel" aria-labelledby="nav1">
                                <div class="row detailrow">
                                <c:forEach var="news" items="${detaillist }">
									<!-- Single News Area -->
									<div class="col-12 col-sm-6">
                    					<div class="single-blog-post style-2 mb-5">
                        					<div class="blog-thumbnail">
                            					<a href="${news.link }"><img src="${news.thumbLink }" alt=""></a>
                        					</div>
                        					<div class="blog-content">
                            					<a href="${news.link }" class="post-title">${news.title }</a>
                        					</div>
                    					</div>
                					</div>
								</c:forEach>
                            	</div>
							</div>
							<div class="col-12">
								<p class="pointer" style="float:right;"><a onclick="showMore();">show more   >></a></p>
							</div>
                    	</div>
                	</div>
             	</div>
        
        		<!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4">
                    <div class="sidebar-area">
                        <!-- Newsletter Widget -->
                        <div class="single-widget-area newsletter-widget mb-30">
                            <h4>Subscribe to our newsletter</h4>
                            <br>
                            <div class="single-skils-area">
                            	<div id="circle" class="circle" data-value="${ratio }">
                                	<div class="skills-text"><span><fmt:formatNumber value="${ratio*100 }" type="number" />%</span></div>
                                </div>
                                <p style="font-size:20px;">subscribers</p>
                        	</div>
                            <br><br><br>
                            
                            <form action="/subscribe" method="post" id="subscribeForm">
                                <input type="email" name="nl-email" id="nlemail" placeholder="Your E-mail">
                            </form>
                            <button id="subscribe" type="submit" class="btn newsbox-btn w-100">Subscribe</button><br><br><br>
                           	<span ><input type="checkbox" id="subCheck" style="width:25px;height:25px;" checked></span><span style="vertical-align:top; margin-left:10px;">이메일 구독서비스 신청에 동의하십니까?</span>
                            
                        </div>
                    </div>
                </div>
        	</div>
        </div>
    </section>
    <!-- ##### Intro News Area End ##### -->

	<jsp:include page="footer.jsp" flush="true"/>
	
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
	
	<script>
	
	var section = 'nav2';
	
	function showMore(){
		location.href = "${pageContext.request.contextPath}/newslist?section=" + section + "&page=1";
	}
	
	$(function(){
		$(document).on('click', '#nav2', function(e){
    		$.ajax({
    			type:"post",
    			dataType:"text",
    			async: false,
    			url:"${pageContext.request.contextPath}/NSnews",
    			success: function(data, textStatus){ 
    				var listData = JSON.parse(data);
    				var NSnewsList = listData.list;
    				
    				$(".detailrow").remove();
    				var rowdiv = '<div class="row detailrow"></div>';
    				$("#nav-1").append(rowdiv);
    				
    				var NSNews = '';
    				for(var i=0; i<NSnewsList.length; i++){
    					NSNews += '<div class="col-12 col-sm-6">';
    					NSNews += '<div class="single-blog-post style-2 mb-5">';
    					NSNews += '<div class="blog-thumbnail">';
    					NSNews += '<a href="' + NSnewsList[i].link + '"><img src="' + NSnewsList[i].thumbLink + '" alt=""></a>';
    					NSNews += '</div>';
    					NSNews += '<div class="blog-content">';
    					NSNews += '<a href="' + NSnewsList[i].link + '" class="post-title">' + NSnewsList[i].title + '</a>';
    					NSNews += '</div>';
    					NSNews += '</div>';
    					NSNews += '</div>';
    				}
    				
    				section = 'nav2';
    				$(".detailrow").append(NSNews);
    			}
    		});
    	});
    	$(document).on('click', '#nav3', function(e){
    		$.ajax({
    			type:"post",
    			dataType:"text",
    			async: false,
    			url:"${pageContext.request.contextPath}/NSpeople",
    			success: function(data, textStatus){ 
    				var listData = JSON.parse(data);
    				var NSpeopleList = listData.list;
    				
    				$(".detailrow").remove();
    				var rowdiv = '<div class="row detailrow"></div>';
    				$("#nav-1").append(rowdiv);
    				
    				var NSpeopleNews = '';
    				for(var i=0; i<NSpeopleList.length; i++){
    					NSpeopleNews += '<div class="col-12 col-sm-6">';
    					NSpeopleNews += '<div class="single-blog-post style-2 mb-5">';
    					NSpeopleNews += '<div class="blog-thumbnail">';
    					NSpeopleNews += '<a href="' + NSpeopleList[i].link + '"><img src="' + NSpeopleList[i].thumbLink + '" alt=""></a>';
    					NSpeopleNews += '</div>';
    					NSpeopleNews += '<div class="blog-content">';
    					NSpeopleNews += '<a href="' + NSpeopleList[i].link + '" class="post-title">' + NSpeopleList[i].title + '</a>';
    					NSpeopleNews += '</div>';
    					NSpeopleNews += '</div>';
    					NSpeopleNews += '</div>';
    				}
    				
    				section = 'nav3';
    				$(".detailrow").append(NSpeopleNews);
    			}
    		});
    	});
    	$(document).on('click', '#nav4', function(e){
    		$.ajax({
    			type:"post",
    			dataType:"text",
    			async: false,
    			url:"${pageContext.request.contextPath}/NSwith",
    			success: function(data, textStatus){ 
    				var listData = JSON.parse(data);
    				var NSwithsList = listData.list;
    				
    				$(".detailrow").remove();
    				var rowdiv = '<div class="row detailrow"></div>';
    				$("#nav-1").append(rowdiv);
    				
    				var NSwithsNews = '';
    				for(var i=0; i<NSwithsList.length; i++){
    					NSwithsNews += '<div class="col-12 col-sm-6">';
    					NSwithsNews += '<div class="single-blog-post style-2 mb-5">';
    					NSwithsNews += '<div class="blog-thumbnail">';
    					NSwithsNews += '<a href="' + NSwithsList[i].link + '"><img src="' + NSwithsList[i].thumbLink + '" alt=""></a>';
    					NSwithsNews += '</div>';
    					NSwithsNews += '<div class="blog-content">';
    					NSwithsNews += '<a href="' + NSwithsList[i].link + '" class="post-title">' + NSwithsList[i].title + '</a>';
    					NSwithsNews += '</div>';
    					NSwithsNews += '</div>';
    					NSwithsNews += '</div>';
    				}
    				
    				section = 'nav4';
    				$(".detailrow").append(NSwithsNews);
    			}
    		});
    	});
    	$(document).on('click', '#nav5', function(e){
    		$.ajax({
    			type:"post",
    			dataType:"text",
    			async: false,
    			url:"${pageContext.request.contextPath}/NSevents",
    			success: function(data, textStatus){ 
    				var listData = JSON.parse(data);
    				var NSeventsList = listData.list;
    				
    				$(".detailrow").remove();
    				var rowdiv = '<div class="row detailrow"></div>';
    				$("#nav-1").append(rowdiv);
    				
    				var NSeventsNews = '';
    				for(var i=0; i<NSeventsList.length; i++){
    					NSeventsNews += '<div class="col-12 col-sm-6">';
    					NSeventsNews += '<div class="single-blog-post style-2 mb-5">';
    					NSeventsNews += '<div class="blog-thumbnail">';
    					NSeventsNews += '<a href="' + NSeventsList[i].link + '"><img src="' + NSeventsList[i].thumbLink + '" alt=""></a>';
    					NSeventsNews += '</div>';
    					NSeventsNews += '<div class="blog-content">';
    					NSeventsNews += '<a href="' + NSeventsList[i].link + '" class="post-title">' + NSeventsList[i].title + '</a>';
    					NSeventsNews += '</div>';
    					NSeventsNews += '</div>';
    					NSeventsNews += '</div>';
    				}
    				
    				section = 'nav5';
    				$(".detailrow").append(NSeventsNews);
    			}
    		});
    	});
    	
    	$(document).on('click', '#subscribe', function(e){
    		var uid = '<%=(String)session.getAttribute("id")%>';
    		
    		if(uid=="null"){
    			alert("로그인 후 사용 가능합니다");
    			$("#subscribeForm").attr("action","/login");	//로그인 화면 이동
    			$("#subscribeForm").submit();
    		} else if($("#nlemail").val()==""){
    			alert("이메일을 입력해주세요.");
    			event.preventDefault();
    		} else if(!$("#subCheck").is(':checked')){
    			alert("구독 서비스 동의 체크박스를 체크해주세요");
    			event.preventDefault();
    		} else{
    			$.ajax({
        			type:"post",
        			async: false,
        			data : {"email": $("#nlemail").val()},
        			url:"${pageContext.request.contextPath}/subscribe",
        			success: function(data, textStatus){ 
        				alert("구독 신청이 완료되었습니다.");
        				$("#nlemail").val("");
        				event.preventDefault();
        			}
        		});
    		}
    	});
    	
    	$(document).on('click', '#logout', function(e){
    		$.ajax({
    			type:"post",
    			async: false,
    			url:"${pageContext.request.contextPath}/logout",
    			success: function(data, textStatus){ 
    				event.preventDefault();
    			}
    		});
    	});
	});
	</script>

</body>
</html>