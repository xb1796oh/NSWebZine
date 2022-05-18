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
    <header class="header-area mb-70">
        <div class="newsbox-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container-fluid">
                    <nav class="classy-navbar justify-content-between" id="newsboxNav">
                        <a href="http://localhost:8090/main" class="nav-brand"><img src="img/core-img/logo.png" alt=""></a>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    
    <!-- ##### Contact Area Start ##### -->
    <section class="section-padding-100-0 mb-70">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="contact-content mb-100" >
						<!-- Contact Form Area -->
                        <div class="contact-form-area" style="text-align: center;">
                        	<h3 class="mb-20">UnSubscribe</h3>
                        	<p class="mb-50">구독 취소를 위해 이메일을 입력하세요.</p>
                        	<input type="text" class="form-control mb-30" id="email" placeholder="email" style="width:30%; margin: 0 auto;">
                        	<button class="btn newsbox-btn btn-2 mb-30" id="unsubscribe" style="width:30%;">UnSubscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <footer class="footer-area">
    	<!-- Footer Logo -->
        <div class="footer-logo mb-70">
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
					</div>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
   
    <script>
    $(function(){
    	$(document).on('click', '#unsubscribe', function(e){
    		var email = $("#email").val();
    		if(email==""){
    			alert("email을 입력하세요");
    			return;
    		}
    		
    		$.ajax({
    			type:"post",
    			async: false,
    			data : {"email": $("#email").val()},
    			url:"http://localhost:8090/emailCheck",
    			success: function(data, textStatus){ 
    				if(data=="fail"){
    					alert("이메일 조회에 실패했습니다.");
    					$("#email").val("");
    					$("#email").focus();
    				} else{
    					location.href = 'http://localhost:8090/main';
    				}
    			}
    		});
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