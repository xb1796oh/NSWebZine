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
    
    <!-- ##### Contact Area Start ##### -->
    <section class="section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-12 col-lg-8">
                    <div class="contact-content mb-100">
						<!-- Contact Form Area -->
                        <div class="contact-form-area mb-70">
                        	<h4 class="mb-50">Login</h4>
                            <div class="row">
                            	<div class="col-8"><div class="form-group"><input type="text" class="form-control" id="id" placeholder="Id"></div></div>
                                <div class="col-8"><div class="form-group"><input type="password" class="form-control" id="password" placeholder="Password"></div></div>
                                <div class="col-12"><button class="btn newsbox-btn btn-2 mt-30" id="loginBtn">Login</button></div>
                        	</div>
                        </div>
                    </div>
                </div>
                
                
                <!-- Sidebar Widget -->
                <div class="col-12 col-sm-9 col-md-6 col-lg-4" style="margin-top:50px; ">
                    <div id="slide" class="mySwiper add-widget mb-30" style="position: relative; overflow:hidden; cursor:pointer;" onclick="location.href='https://www.ildonglakes.co.kr:8443/'">                   	
                    	<!-- slide image -->
                    	<div class="swiper-wrapper">
                    		<div class="swiper-slide">
                        		<img id="add1" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140609_62.JPG" />
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add2" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140504_58.JPG" />
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add3" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140443_57.JPG" />
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add4" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140543_60.JPG" />
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add5" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140412_55.JPG" />
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add6" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140518_59.JPG" />
                    		</div>
                    		<div class="swiper-slide">
                    			<img id="add7" src="https://www.ildonglakes.co.kr:8443/static/GALLERY/20211109140555_61.JPG" />
                    		</div>
                    	</div>
                    	
                    	<!-- slide title -->
                    	<div style="position: absolute; top: 0px; width: 100%; height: 100%; z-index:1;">
            				<div style="display:table; width:100%; height:100%;">
            					<div style="display:table-row;">
            						<div style="display: table-cell; vertical-align: middle; text-align: center; cursor:pointer;" onclick="location.href='http://www.hotelnongshim.com'">
            							<span style="font-size:20px; color:white; font-family: 'Gowun Batang', serif; z-index:2;">일동 레이크 골프클럽</span><br>
            							<span style="font-size:30px; color:white; font-family: 'Gowun Batang', serif; z-index:2;"><b>골프클럽</b> 그 이상의 <b>의미</b></span>
            						</div>
            					</div>
            				</div>
            			</div>
                    </div>
                </div>     
            </div>
        </div>
    </section>
    
    <jsp:include page="footer.jsp" flush="true"/>
    
    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
   
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
    	
    	$(document).on('click', '#subscribe', function(e){
    		var uid = '<%=(String)session.getAttribute("id")%>';
    		console.log(uid);
    		if(uid=="null"){
    			alert("로그인 후 사용 가능합니다");
    			event.preventDefault();
    		}
    	});
    	
    	$(document).on('click', '#loginBtn', function(e){
    		if($("#id").val()==""){
    			alert("아이디를 입력하세요.");
    			return;
    		} else if($("#password").val()==""){
    			alert("비밀번호를 입력하세요.");
    			return;
    		} else {
    			$.ajax({
        			type:"post",
        			async: false,
        			data : {"id":$("#id").val(), "password" : $("#password").val()},
        			url:"${pageContext.request.contextPath}/loginCheck",
        			success: function(data, textStatus){ 
        				if(data=="false"){
        					alert("아이디 혹은 비밀번호가 틀렸습니다.");
        					$("#id").val("");
        					$("#password").val("");
        					$("#id").focus();
        				} else{
        					location.href = '${pageContext.request.contextPath}/';
        				}
        			}
        		});
    		}
    	});
    });
    </script>
    
</body>
</html>