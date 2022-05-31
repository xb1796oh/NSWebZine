<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

    <style>
    .board_list {
		width: 100%;
		border-top: 2px solid #252525;
		border-bottom: 1px solid #ccc;
		margin: 15px 0;
		border-collapse: collapse;
	}
	.board_list thead th:first-child {
		background-image: none;
	}
	.board_list thead th {
		border-bottom: 1px solid #ccc;
		padding: 13px 0;
		color: #3b3a3a;
		text-align: center;
		vertical-align: middle;
	}
	.board_list tbody td {
		border-top: 1px solid #ccc;
		padding: 13px 0;
		text-align: center;
		vertical-align: middle;
	}
	.board_list tbody tr:first-child td {
		border: none;
	}
	.board_list tbody tr:hover {
		background: #ffff99;
	}
	.board_list tbody td.title {
		text-align: center;
		padding-left: 20px;
		padding-right: 18px;
	}
	.board_list tbody td a {
		display: inline-block
	}
    </style>

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
    
   <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-12">
                    <div class="contact-content mb-100">
                        <!-- Logo -->
                        <a href="#" class="d-block mb-50"><img src="img/core-img/logo.png" alt=""></a>
							<table class="board_list">
								<colgroup>
									<col width="*%" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">작성일</th>
										<th scope="col">조회</th>
									</tr>
								</thead>
								
								<tbody>
									<c:forEach var="freeboard" items="${fblist }">
										<tr id="fblist" style="cursor:pointer" onClick='readFB(${freeboard.fbNo});'>
								    		<td>${freeboard.title }</td>
								    		<td>
								    			<div class="single-contact-info  align-items-center" style="display:inline-block;">
								    			<c:set var="writer" value="${freeboard.fbWriter }" />
								    			<c:if test="${freeboard.secret eq true }">
								    				<div class="icon mr-15"  style="display:inline-block;">
                                						<img src="https://mblogthumb-phinf.pstatic.net/20150831_112/koowq_1441021325694Id6se_PNG/%C0%DA%B9%B0%BC%E8_%BF%F8%C7%FC_%BE%C6%C0%CC%C4%DC-02.png?type=w420" alt="">
                            						</div>
								    				<c:forEach var="secret" begin="1" end="${fn:length(writer) }">*</c:forEach>
								    				
								    			</c:if>
								    			<c:if test="${freeboard.secret eq false }">${freeboard.fbWriter }</c:if>
								    			</div>
								    		</td>
								    		<td>${freeboard.recordDate }</td>
								    		<td>${freeboard.views }</td>
						    			</tr>
									</c:forEach>
    							</tbody>
							</table>
                    	 <a href="/write" class="btn newsbox-btn btn-2 mt-30" style="float:right;">글쓰기</a>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->
    

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
    <script language="javascript" type="text/javascript">
    
    function readFB(fbNo){
    	let form = document.createElement('form');
    	let param = document.createElement('input');
    	param.setAttribute('type', 'hidden');
    	param.setAttribute('name', 'fbNo');
    	param.setAttribute('value', fbNo);
    	
    	form.appendChild(param);
    	form.setAttribute('method', 'post');
    	form.setAttribute('action', '/read');
    	
    	let fbtr = document.getElementById('fblist');
    	fbtr.appendChild(form);
    	form.submit();
    }
    
    
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