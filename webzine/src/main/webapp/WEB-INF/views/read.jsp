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
	<script src="https://cdn.ckeditor.com/ckeditor5/29.1.0/classic/ckeditor.js"></script>
	<!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/balloon-block/ckeditor.js"></script> -->
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
    
   <!-- ##### Freeboard ##### -->
    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="contact-content mb-30">
                        <a href="#" class="d-block mb-50"><img src="img/core-img/logo.png" alt=""></a>
						
						<div class="single-contact-info align-items-center" style="display:inline-block;">
                            <div class="icon mr-15" style="display:inline-block;">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrd7BKSkv3wrkz8trLeNxfx_5Qr_b-EMzJXbfmVbDHcDbdTVSmnez800BYmBXTuHU_JXY&usqp=CAU" alt="">
                            </div>
                            <h3 style="display:inline-block;">${fb.title }</h3>
                        </div>
                        <c:if test="${fb.fbWriter eq id }">
                        <div class="single-contact-info  align-items-center" id="delete" style="display:inline-block; float: right; margin-left:2%; "  onClick='erase(${fb.fbNo});'>
                            <p style="display:inline-block; cursor:pointer; padding-top:25px;">삭제</p>
							<div class="icon mr-10"  style="display:inline-block;">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2PnUYZ6QPsNPv-ULQceoH5B6Pw9oQ_KwV71xUKJSQ-xdmbK5_FOJsEuLWD3r8RZAXLwA&usqp=CAU" style="cursor:pointer;" alt="">
                            </div>   
                        </div>
                        <div class="single-contact-info  align-items-center" id="modify" style="display:inline-block; float: right;"  onClick='modify(${fb.fbNo});'>
                            <p style="display:inline-block; cursor:pointer; padding-top:25px;">수정</p>
                            <div class="icon mr-10"  style="display:inline-block;">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAfjlEqpfL9kAAGWLl5EfAK8bExNN6GLJvihu8o-4OPBKyjWPXHZSx6pBJ2CbcnhBzFY8&usqp=CAU" style="cursor:pointer;" alt="">
                            </div>
                        </div>
                        </c:if>
                        <br> <br>
						<div class="single-contact-info  align-items-center" style="display:inline-block;">
                            <div class="icon mr-15"  style="display:inline-block;">
                                <img src="https://louisville.edu/enrollmentmanagement/images/person-icon/image" alt="">
                            </div>
                            <c:set var="writer" value="${fb.fbWriter }" />
							<c:if test="${fb.secret eq true }">
								<p style="display:inline-block;"><c:forEach var="secret" begin="1" end="${fn:length(writer) }">*</c:forEach></p>
							</c:if>
							<c:if test="${fb.secret eq false }"><p style="display:inline-block;">${fb.fbWriter }</p></c:if>             
                        </div>
						<div class="single-contact-info  align-items-center" style="display:inline-block; margin-left:5%;">
                            <div class="icon mr-15"  style="display:inline-block;">
                                <img src="https://us.123rf.com/450wm/captainvector/captainvector1705/captainvector170506024/77329229-%EC%BA%98%EB%A6%B0%EB%8D%94-%EC%95%84%EC%9D%B4%EC%BD%98.jpg" alt="">
                            </div>
                            <p style="display:inline-block;">${fb.recordDate }</p>                            
                        </div>
						<div class="single-contact-info  align-items-center" style="float: right;  ">
                            <div class="icon mr-15"  style="display:inline-block;">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJh6bT3EL7JNd5edGWcNizG70ofq6s-OlKypPkuAVm-BYPawC_M243gylm9anxIPRyRUs&usqp=CAU" alt="">
                            </div>
                            <p style="display:inline-block;">${fb.views }</p>                            
                        </div>
                        <br><br><br>
						<div class="col-12 ">
							<textarea id="content" style="border: none"></textarea>
						</div>									
                    </div>
                    
                </div>
            </div>
        </div>
    </section>


	
    <!-- ##### Replies ##### -->
    <section class="elements-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="accordions mb-100" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel single-accordion">
                        	<div class="col-12" style="outline: solid gray; margin-top:30px; margin-bottom:30px;">
                    			<div class="row">
                        			<div class="col-11" style="padding-top: 35px; padding-bottom: 20px; margin:auto;">
                                		<div class="text">
                                			<h5>The Best Reporters</h5>
                                            <textarea name="message" class="form-control" id="message" cols="30" rows="3" placeholder="Message"></textarea>
                                            <button style="float:right; margin-left:10px; margin-top:8px;" class="btn" type="submit">댓글</button>
                                         	<button style="float:right; margin-top:8px;" class="btn" type="submit">취소</button>
                                         	<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">글쓴이 비공개</div>
											<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>
                                		</div>
                            		</div>
                        		</div>
                        	</div>
                            <h6><a role="button" class="" aria-expanded="true" aria-controls="collapseOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Replies
                                    <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                    <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a></h6>
                            <div id="collapseOne" class="accordion-content collapse show" >
                				<div class="col-11" style="margin:auto;">
                    				<div class="row">
                        				<div class="col-12" style="margin-top : 30px; margin-bottom: 30px;">
                                			<div class="text" style="margin-bottom:20px;" >
                                				<h5 style="display:inline-block;">The Best Reporters</h5>
                                				&nbsp;&nbsp;<span>21:00:30 0</span><br>
                                				<div class="col-9" style="display:inline-block;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat </div>
                                				<div class="col-2" id="accordion2" style="display:inline-block;  float:right;">
                                					<a role="button" class="" aria-expanded="true" aria-controls="collapseOne2" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2">답글</a>
                                				</div>
                                				<div class="panel single-accordion">
                                					<div id="collapseOne2" class="accordion-content collapse show" >
                    									<div class="col-11" style="outline: solid gray; margin-top:30px; margin-bottom: 30px;">
                    										<div class="row">
                        										<div class="col-12" style="padding-top: 35px; padding-bottom: 20px; margin:0 auto;">
                                									<div class="text">
                                										<h5>The Best Reporters</h5>
                                            							<textarea name="message" class="form-control" id="message" cols="30" rows="3" placeholder="Message"></textarea>
                                            							<button style="float:right; margin-left:10px; margin-top:8px;" class="btn" type="submit">댓글</button>
                                         								<button style="float:right; margin-top:8px;" class="btn" type="submit">취소</button>
                                         								<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">글쓴이 비공개</div>
																		<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>
                                									</div>
                            									</div>
                        									</div>
                        								</div>
                                					</div>
                                					<div class="col-9">
                                						<h5><a role="button" class="" aria-expanded="true" aria-controls="collapseOne1" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">답글보기
                                    							<span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                    							<span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    					</a></h5>
                                					</div>
                                				<div id="accordion1"></div>
                                				<div class="panel single-accordion" style="margin:0 auto;">
                           							<div id="collapseOne1" class="accordion-content collapse show" >
                										<div class="col-11" style="margin:auto;">
                    										<div class="row">
                        										<div class="col-12" style="margin-top : 30px; margin-bottom: 30px;">
                                									<div class="text" style="margin-bottom:20px;" >
                                										<h5 style="display:inline-block;">The Best Reporters</h5>
                                										&nbsp;&nbsp;<span>21:00:30 0</span>
                                										<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat </div>
                                									</div>
                            									</div>
                        									</div>
                        									<div class="row">
                        										<div class="col-12" style="margin-top : 30px; margin-bottom: 30px;">
                                									<div class="text" style="margin-bottom:20px;" >
                                										<h5 style="display:inline-block;">The Best Reporters</h5>
                                										&nbsp;&nbsp;<span>21:00:30 0</span>
                                										<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat </div>
                                									</div>
                            									</div>
                        									</div>
                        									<div class="row">
                        										<div class="col-12" style="margin-top : 30px; margin-bottom: 30px;">
                                									<div class="text" style="margin-bottom:20px;" >
                                										<h5 style="display:inline-block;">The Best Reporters</h5>
                                										&nbsp;&nbsp;<span>21:00:30 0</span>
                                										<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat </div>
                                									</div>
                            									</div>
                        									</div>
                    									</div>
                									</div>
                								</div>
                                			</div>
                            			</div>
                        			</div>
                        			<div class="row">
                        				<div class="col-12" style="margin-top : 30px; margin-bottom: 30px;">
                                			<div class="text" style="margin-bottom:20px;" >
                                				<h5 style="display:inline-block;">The Best Reporters</h5>
                                					&nbsp;&nbsp;<span>21:00:30 0</span>
                                					<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat </div>
                                				</div>
                            				</div>
                        				</div>
                        			<div class="row">
                        				<div class="col-12" style="margin-top : 30px; margin-bottom: 30px;">
                                			<div class="text" style="margin-bottom:20px;" >
                                				<h5 style="display:inline-block;">The Best Reporters</h5>
                                				&nbsp;&nbsp;<span>21:00:30 0</span>
                                				<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat </div>
                                			</div>
                            			</div>
                        			</div>
                    			</div>
                    				
                			</div>
                		</div>
                    </div>
                </div></div>
			</div>
		</div>
    </section>
    <!-- ##### Elements Area End ##### -->
	

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
		ClassicEditor.create(document.querySelector("#content"))
    	.then(editor=>{
    		window.editor = editor;
    	    editor.isReadOnly = true;
    	    const toolbarElement = editor.ui.view.toolbar.element;
    	    toolbarElement.style.display = 'none';
        	editor.setData('${fb.contents }');
        })
	    .catch((error) => {
    	   	console.error(error);
	    });
	});
    
    function modify(fbNo){
    	let form = document.createElement('form');
    	let param = document.createElement('input');
    	param.setAttribute('type', 'hidden');
    	param.setAttribute('name', 'fbNo');
    	param.setAttribute('value', fbNo);
    	
    	form.appendChild(param);
    	form.setAttribute('method', 'post');
    	form.setAttribute('action', '/modify');
    	
    	let fbtr = document.getElementById('modify');
    	fbtr.appendChild(form);
    	form.submit();
    }
    
    function erase(fbNo){
    	var result = confirm("내용을 정말 삭제하시겠습니까?");
    	if(result){
    		let form = document.createElement('form');
        	let param = document.createElement('input');
        	param.setAttribute('type', 'hidden');
        	param.setAttribute('name', 'fbNo');
        	param.setAttribute('value', fbNo);
        	
        	form.appendChild(param);
        	form.setAttribute('method', 'post');
        	form.setAttribute('action', '/delete');
        	
        	let fbtr = document.getElementById('delete');
        	fbtr.appendChild(form);
        	form.submit();
		}
    }
    
    </script>
</body>
</html>