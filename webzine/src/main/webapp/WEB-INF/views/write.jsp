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
	.ck.ck-reset.ck-editor.ck-rounded-corners {
    		width: 100%;
		}
	.ck-editor__editable {
	    min-height: 700px;
	}
    
    </style>
	<!-- <script src="https://cdn.ckeditor.com/ckeditor5/29.1.0/classic/ckeditor.js"></script> -->
	<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/balloon-block/ckeditor.js"></script>
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
                        <a href="#" class="d-block mb-50"><img src="img/core-img/logo.png" alt=""></a>
						<form id="form1" action="/enrollFB" method="post" enctype='multipart/form-data'>
							<div class="col-12 mb-30" style="display:inline-block; ">
                                <input type="text" class="form-control" id="title" name="title" placeholder="제목" style="height:50px;">
                            </div>
							<div class="col-12 ">
								<div id="editor" style="border: 1px solid gray;"></div>
							</div>
							<div class="col-12">
								<div style="display:inline-block; float:right; margin-left:10px;"><button class="btn newsbox-btn mt-30" type="button" id="enroll">글 등록</button></div>
								<div class="m-2 mt-30" style="vertical-align:top; margin-left:10px; float:right; display:inline-block; padding-top:20px;">글쓴이 비공개</div>
								<div class="m-2 mt-30" style="display:inline-block; float:right; padding-top:18px;"><input type="checkbox" id="secretCheck" style="width:25px; height:25px;" checked></div>
								<input type="hidden" id="secret" name="secret" />
								<input type="hidden" id="contents" name="contents" />
							</div>				
						</form>
                    </div>
                    
                </div>
            </div>
        </div>
    </section>

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
    <script>
    
    $(function(){
    	 BalloonEditor
         .create( document.querySelector( '#editor' ) )
         .catch( error => {
             console.error( error );
         } );
    	 
    	 $(document).on('click', '#enroll', function(e){
    		 if($("#title").val()==""){
    			 alert("제목을 입력하세요.");
    			 return;
    		 }
    		 if($("#secretCheck").is(':checked')){
    			 $("#secret").attr("value", "1");
    		 } else {
    			 $("#secret").attr("value", "0");
    		 }
    		 $("#contents").attr("value", $("#editor").html());
    		 $("#form1").submit();
    	 });
    });
    
    </script>
</body>
</html>