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
    
    <!-- slides -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />    
</head>	

<body>

    <jsp:include page="header.jsp" flush="true"/>
    
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
    
    <!-- ##### Catagory Featured Area ##### -->
    <div class="catagory-featured-post clearfix mb-100"  style="background-color:white;">  
    	 <div id="slide" class="mySwiper add-widget mb-30" style="position: relative; overflow:hidden; cursor:pointer;" onclick="location.href='http://brand.nongshim.com/shop/index'">                   	
			<!-- slide image -->
            <div class="swiper-wrapper">
                 <div class="swiper-slide">
                 	<img id="add1" src="http://image.nongshim.com/brand/info/1647993897626.jpg" />
                 </div>
                 <div class="swiper-slide">
                 	<img id="add2" src="http://image.nongshim.com/brand/info/1647993716687.jpg" />
                 </div>
                 <div class="swiper-slide">
                 	<img id="add3" src="http://image.nongshim.com/brand/info/1645745485475.jpg" />
                 </div>
                 <div class="swiper-slide">
                  	<img id="add4" src="http://image.nongshim.com/brand/info/1652146133802.jpg" />
                 </div>
                 <div class="swiper-slide">
                 	<img id="add5" src="http://image.nongshim.com/brand/info/1649925683889.jpg" />
                 </div>
     		</div>
   	 	</div>
    </div>
    
   <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100-0 mb-100 ">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12" style="text-align:center; ">
                	<h4>글 등록이 완료되었습니다.</h4>
                	<a href="/main" class="btn newsbox-btn btn-2 mt-30">메인페이지로 이동</a>
                </div>
            </div>
        </div>
    </section>s
    
    

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
    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
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