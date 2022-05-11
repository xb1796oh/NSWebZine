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
                                	<li><a>Weekly News</a></li>
                                	<li><a href="${pageContext.request.contextPath}/login">login</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

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
					<!-- Single News Area -->
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
                    <div class="load-more-button text-center">
                        <a href="#" class="btn newsbox-btn">Load More</a>
                    </div>
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
                                    <a class="nav-item nav-link active" id="nav1" data-toggle="tab" href="#nav-1" role="tab" aria-controls="nav-1" aria-selected="true">NS News</a>
                                    <a class="nav-item nav-link" id="nav2" data-toggle="tab" href="#nav-2" role="tab" aria-controls="nav-2" aria-selected="false">NS People</a>
                                    <a class="nav-item nav-link" id="nav3" data-toggle="tab" href="#nav-3" role="tab" aria-controls="nav-3" aria-selected="false">With</a>
                                    <a class="nav-item nav-link" id="nav4" data-toggle="tab" href="#nav-4" role="tab" aria-controls="nav-4" aria-selected="false">Events</a>
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
                    	</div>
                	</div>
             	</div>
        
        		<!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4">
                    <div class="sidebar-area">
                        <!-- Newsletter Widget -->
                        <div class="single-widget-area newsletter-widget mb-30">
                            <h4>Subscribe to our newsletter</h4>
                            <form action="#" method="post">
                                <input type="email" name="nl-email" id="nlemail" placeholder="Your E-mail">
                                <button type="submit" class="btn newsbox-btn w-100">Subscribe</button>
                            </form>
                            <p class="mt-30">Nullam lacinia ex eleifend orci porttitor, suscipit interdum augue condimentum. Etiam pretium turpis eget nibh . volutpat lobortis.</p>
                        </div>
                    </div>
                </div>
        	</div>
        </div>
    </section>
    <!-- ##### Intro News Area End ##### -->

  
    <!-- ##### Footer Area Start ##### -->    
    <footer class="footer-area">
        <!-- Footer Logo -->
        <div class="footer-logo mb-100">
            <a href="index.html"><img src="img/core-img/logo.png" alt=""></a>
        </div>
        <!-- Footer Content -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="footer-content text-center">
                        <!-- Footer Nav -->
                        <div class="footer-nav">
                            <ul>
                                <li><a href="#">Contact Us</a></li>
                                <li><a href="#">Closed Captioning</a></li>
                                <li><a href="#">Site Map</a></li>
                            </ul>
                        </div>
                        <!-- Social Info -->
                        <div class="footer-social-info">
                            <a href="#" data-toggle="tooltip" data-placement="top" title="pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>

                        <p class="mb-15">Nullam lacinia ex eleifend orci porttitor, suscipit interdum augue condimentum. Etiam pretium turpis eget nibh laoreet iaculis. Proin ac urna at lectus volutpat lobortis. Vestibulum venenatis iaculis diam vitae lobortis. Donec tincidunt viverra elit, sed consectetur est pr etium ac. Mauris nec mauris tellus. </p>

                        <!-- Copywrite Text -->
                        <p class="copywrite-text"><a href="#">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

	
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
	$(function(){
		$(document).on('click', '#nav1', function(e){
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
    				
    				$(".detailrow").append(NSNews);
    			}
    		});
    	});
    	$(document).on('click', '#nav2', function(e){
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
    				
    				$(".detailrow").append(NSpeopleNews);
    			}
    		});
    	});
    	$(document).on('click', '#nav3', function(e){
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
    				
    				$(".detailrow").append(NSwithsNews);
    			}
    		});
    	});
    	$(document).on('click', '#nav4', function(e){
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
    				
    				$(".detailrow").append(NSeventsNews);
    			}
    		});
    	});
	});
	</script>

</body>
</html>