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

    <title>NSZine - login</title>
    <link rel="icon" href="img/core-img/favicon.ico">
    <link rel="stylesheet" href="style.css">
    
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    
    <!-- slides -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    
    <!-- font -->
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
    
    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-12 col-lg-8">
                    <div class="contact-content mb-100">
						<!-- Contact Form Area -->
                        <div class="contact-form-area mb-70">
                            <h4 class="mb-50">Login</h4>
                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-8">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="name" placeholder="Id">
                                        </div>
                                    </div>
                                    <div class="col-8">
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="email" placeholder="Password">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn newsbox-btn btn-2 mt-30" type="submit">Login</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-9 col-md-6 col-lg-4">
                    <!-- Newsletter Widget -->
                    <div class="single-widget-area newsletter-widget mb-30">
                        <h4>Subscribe to our newsletter</h4>
                        <form action="#" method="post">
                            <input type="email" name="nl-email" id="nlemail" placeholder="Your E-mail">
                            <button type="submit" class="btn newsbox-btn w-100">Subscribe</button>
                        </form>
                        <p class="mt-30">Nullam lacinia ex eleifend orci porttitor, suscipit interdum augue condimentum. Etiam pretium turpis eget nibh . volutpat lobortis.</p>
                    </div>

                    <!-- Add Widget -->
                    <div id="slide" class="mySwiper add-widget mb-30" style="position: relative; overflow:hidden; cursor:pointer;" onclick="location.href='https://www.ildonglakes.co.kr:8443/'">
                    	<div style="position: absolute; op: 0px; width: 100%; height: 100%;">
            				<div style="display:table; width:100%; height:100%;">
            					<div style="display:table-row;">
            						<div style="display: table-cell; vertical-align: middle;">
            							<h3>hello...</h3>
            							<p style="text-align: center; font-size:20px; color:white; font-family: 'Gowun Batang', serif; z-index:100;">일동레이크 골프클럽</p>
            							<p style="text-align: center; font-size:30px; color:black; font-family: 'Gowun Batang', serif; z-index:100;">골프클럽 그 이상의 의미</p>
            						</div>
            					</div>
            				</div>
            			</div>
                    	
                    	<div class="swiper-wrapper">
                    		<div class="swiper-slide">
                        		<img id="add1" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140609_62.JPG" alt="">
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add2" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140504_58.JPG" alt="">
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add3" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140443_57.JPG" alt="">
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add4" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140543_60.JPG" alt="">
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add5" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140412_55.JPG" alt="">
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add6" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140518_59.JPG" alt="">
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add7" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140555_61.JPG" alt="">
                    		</div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->
    
   
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        //spaceBetween: 30,
        centeredSlides: true,
        freeMode : false,
        autoplay: {
          delay: 2500,
          
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
      
    $(function(){
    	$(".wiper-slide").hide();
    	$(".swiper-slide-active").show();
    });
    </script>
    
</body>
</html>