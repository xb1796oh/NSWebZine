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
                            <p style="display:inline-block; cursor:pointer; padding-top:25px;">??????</p>
							<div class="icon mr-10"  style="display:inline-block;">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2PnUYZ6QPsNPv-ULQceoH5B6Pw9oQ_KwV71xUKJSQ-xdmbK5_FOJsEuLWD3r8RZAXLwA&usqp=CAU" style="cursor:pointer;" alt="">
                            </div>   
                        </div>
                        <div class="single-contact-info  align-items-center" id="modify" style="display:inline-block; float: right;"  onClick='modify(${fb.fbNo});'>
                            <p style="display:inline-block; cursor:pointer; padding-top:25px;">??????</p>
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
								<p style="display:inline-block;">*******</p>
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
                                			<h5>${id }</h5>
                                            <textarea name="comments" class="form-control" id="comments" cols="30" rows="3" placeholder="Message"></textarea>
                                            <button style="float:right; margin-left:10px; margin-top:8px;" id="commentBtn" class="btn" type="button" onclick="writeComment(${fbNo }, ${id});">??????</button>
                                         	<button style="float:right; margin-top:8px;" class="btn" type="button">??????</button>
                                         	<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">????????? ?????????</div>
											<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="commentSecretCheck" style="width:20px; height:20px;" checked></div>
                                		
                                			<input type="hidden" id="fbNo" name="fbNo" value="${fbNo }"/>
                                			<input type="hidden" id="commentSecret" />
                                		</div>
                            		</div>
                        		</div>
                        	</div>
                            <h6><a role="button" class="" aria-expanded="true" aria-controls="collapseOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Replies&nbsp;&nbsp;&nbsp;&nbsp;<c:if test="${commentsNum > 0 }">${commentsNum }</c:if>
                                    <span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                    <span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                    </a></h6>
                          	<div id="collapseOne" class="accordion-content collapse show" >
                				<div class="col-11 collapseOne" style="margin: auto;">
                					<c:forEach items="${comments }" var="comment" varStatus="status">
                    				<div class="row">
                        				<div class="col-12" style="margin-top: 30px;">
                                			<div class="text" >
                                				<c:set var="writer" value="${comment.commentWriter }" />
                                				<c:if test="${comment.secret eq true }">
                                					<h5 style="display:inline-block;"><img src="https://mblogthumb-phinf.pstatic.net/20150831_112/koowq_1441021325694Id6se_PNG/%C0%DA%B9%B0%BC%E8_%BF%F8%C7%FC_%BE%C6%C0%CC%C4%DC-02.png?type=w420" alt="" style="width:30px; ">&nbsp;&nbsp;*******</h5>
								    			</c:if>
                                				<c:if test="${comment.secret eq false }"><h5 style="padding-top:5px; display:inline-block;"><img style="width:30px; " src="https://louisville.edu/enrollmentmanagement/images/person-icon/image" alt="">${comment.commentWriter }</h5></c:if>
                                				&nbsp;&nbsp;&nbsp;&nbsp;<span>${comment.recordDate }</span>
                                				<c:if test="${comment.modification eq true}">(?????????)</c:if>
                                				<c:if test="${writer eq id}">&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span></c:if><br>
                                				<div class="col-10" style="display:inline-block;">${comment.comments }</div>
                                				<div class="col-1" id="comment${status.count}" style="display:inline-block;  float:right; text-align:right;">
                                					<a role="button" class="" aria-expanded="true" aria-controls="comment-div${status.count}" data-toggle="collapse" data-parent="#comment${status.count}" href="#comment-div${status.count}">??????</a>
                                				</div>
                                				<div class="panel single-accordion">
                                					<div id="comment-div${status.count}" class="accordion-content collapse" >
                    									<div class="col-12" style="outline: solid gray; margin-top:30px; margin-bottom: 30px;">
                    										<div class="row">
                        										<div class="col-12" style="padding-top: 35px; padding-bottom: 20px; margin:0 auto;">
                                									<div class="text">
                                										<h5>${id }</h5>
                                            							<textarea name="message" class="form-control" id="replyMessage" cols="30" rows="3" placeholder="Message"></textarea>
                                            							<button style="float:right; margin-left:10px; margin-top:8px;" class="btn" type="button" onClick='replyWrite(${comment.fbNo}, ${comment.commentNo }, this, ${comment.replyDepth })'>??????</button>
                                         								<button style="float:right; margin-top:8px;" class="btn" type="submit">??????</button>
                                         								<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">????????? ?????????</div>
																		<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>
                                									</div>
                            									</div>
                        									</div>
                        								</div>
                                					</div>
                                					
                                					<c:if test="${comment.replyCount > 0 }">
                                						<h7><a role="button" class="" aria-expanded="" aria-controls="collapseTwo${status.count}" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo${status.count}" >&nbsp;&nbsp;&nbsp;&nbsp;?????? ${comment.replyCount }??? ??????&nbsp;&nbsp;&nbsp;&nbsp;
                                                     		<span class="accor-open"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                     		<span class="accor-close"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                      		</a></h7>
                                                     	<div id="collapseTwo${status.count}" class="accordion-content collapse" ></div>
                                					</c:if>
                                						<!-- 
                                							onClick="replyList(${comment.fbNo}, ${comment.commentNo }, this, ${status.count});"	
                											<div class="col-11 collapseTwo" style="margin: auto;">
                												<c:forEach items="${comments }" var="comment" varStatus="status">
                    												<div class="row">
                        												<div class="col-12" style="margin-top : 30px;">
                                											<div class="text" >
                                												<c:set var="writer" value="${comment.commentWriter }" />
                                												<c:if test="${comment.secret eq true }">
                                													<h5 style="display:inline-block;"><img src="https://mblogthumb-phinf.pstatic.net/20150831_112/koowq_1441021325694Id6se_PNG/%C0%DA%B9%B0%BC%E8_%BF%F8%C7%FC_%BE%C6%C0%CC%C4%DC-02.png?type=w420" alt="" style="width:30px; ">&nbsp;&nbsp;*******</h5>
								    											</c:if>
                                												<c:if test="${comment.secret eq false }"><h5 style="padding-top:5px; display:inline-block;"><img style="width:30px; " src="https://louisville.edu/enrollmentmanagement/images/person-icon/image" alt="">${comment.commentWriter }</h5></c:if>
                                												&nbsp;&nbsp;&nbsp;&nbsp;<span>${comment.recordDate }</span>
                                												<c:if test="${comment.modification eq true}">(?????????)</c:if>
                                												<c:if test="${writer eq id}">&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span></c:if><br>
                                												<div class="col-10" style="display:inline-block;">${comment.comments }</div>
                                												<div class="col-1" id="reply2${status.count}" style="display:inline-block;  float:right; text-align:right;">
                                													<a role="button" class="" aria-expanded="true" aria-controls="reply2-div${status.count}" data-toggle="collapse" data-parent="#reply2${status.count}" href="#reply2-div${status.count}">??????2</a>
                                												</div>
                                												<div class="panel single-accordion">
                                													<div id="reply2-div${status.count}" class="accordion-content collapse" >
                    																	<div class="col-12" style="outline: solid gray; margin-top:30px; margin-bottom: 30px;">
                    																		<div class="row">
                        																		<div class="col-12" style="padding-top: 35px; padding-bottom: 20px; margin:0 auto;">
                                																	<div class="text">
                                																		<h5>${id }</h5>
                                            															<textarea name="message" class="form-control" id="replyMessage" cols="30" rows="3" placeholder="Message"></textarea>
                                            															<button style="float:right; margin-left:10px; margin-top:8px;" class="btn" type="button" onClick='replyWrite(${comment.fbNo}, ${comment.commentNo }, this, ${comment.replyDepth })'>??????2</button>
                                         																<button style="float:right; margin-top:8px;" class="btn" type="submit">??????</button>
                                         																<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">????????? ?????????</div>
																										<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>
                                																	</div>
                            																	</div>
                        																	</div>
                        																</div>
                                													</div>                        							
                        														</div>
                            												</div>
                        												</div>
                    												</div>
                    											</c:forEach>
                											</div>
                										-->
                        						</div>
                            				</div>
                        				</div>
                    				</div>
                    				</c:forEach>
                				</div>
                			</div>
                    	</div>
                	</div>
                </div>
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
    
    // ????????? ????????????
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
    
 	// ????????? ????????????
    function erase(fbNo){
    	var result = confirm("????????? ?????? ?????????????????????????");
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
    
    /* 
		?????? ?????? ??????
	*/
	function writeComment(fbNo, id){
	
		if($("#commentSecretCheck").is(':checked')){
			 $("#commentSecret").attr("value", "1");
		 } else {
			 $("#commentSecret").attr("value", "0");
		 }
	
		$.ajax({
			type: "post",
			url: "/writeComment",
			data: {"fbNo": fbNo, "commentWriter": id, "comments": $("#comments").val(), "secret": $("#commentSecret").val()},
			dataType: "text",
			success:function(data){
				var comment = JSON.parse(data);
				
				let collapseOne = $("#collapseOne").children(".collapseOne");
				var newComment = '<div class="row">';
				newComment +=		'<div class="col-12" style="margin-top : 30px;">';
				newComment += 			'<div class="text" >';
				newComment +=				'<c:set var="writer" value=' + comment.commentWriter + ' />';
			
				if(comment.secret == true){
					newComment += '<h5 style="display:inline-block;">';
					newComment += 	'<img src="https://mblogthumb-phinf.pstatic.net/20150831_112/koowq_1441021325694Id6se_PNG/%C0%DA%B9%B0%BC%E8_%BF%F8%C7%FC_%BE%C6%C0%CC%C4%DC-02.png?type=w420" alt="" style="width:30px; ">&nbsp;&nbsp; *******';
					newComment += '</h5>';
				}
				else{
					newComment += '<h5 style="padding-top:5px; display:inline-block;">';
					newComment += 	'<img style="width:30px;" src="https://louisville.edu/enrollmentmanagement/images/person-icon/image" alt="">' + comment.commentWriter;
					newComment += '</h5>';
				}
				newComment += 	'&nbsp;&nbsp;&nbsp;&nbsp;<span>' + comment.recordDate + '</span>';
			
				if(comment.modification == true){
					newComment += '(?????????)';
				}
			
				if(comment.commentWriter == id){
					newComment += '&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span><br>';
				}
			
				newComment += '<div class="col-10" style="display:inline-block;">' + comment.comments + '</div>';
				newComment += 	'<div class="col-1" id="comment' + comment.commentNo + 'n" style="display:inline-block;  float:right; text-align:right;">';
				newComment += 		'<a role="button" class="" aria-expanded="true" aria-controls="comment-div' + comment.commentNo + 'n"  data-toggle="collapse" data-parent="#comment' + comment.commentNo + 'n"  href="#comment-div' + comment.commentNo + 'n">??????</a>';
				newComment += 	'</div>';
				newComment += 	'<div class="panel single-accordion">';
				newComment += 		'<div id="comment-div' + comment.commentNo + 'n"  class="accordion-content collapse" >';
				newComment += 			'<div class="col-12" style="outline: solid gray; margin-top:30px; margin-bottom: 30px;">';
				newComment += 				'<div class="row">';
				newComment += 					'<div class="col-12" style="padding-top: 35px; padding-bottom: 20px; margin:0 auto;">';
				newComment += 						'<div class="text">';
				newComment += 							'<h5>'+ id +'</h5>';
				newComment += 							'<textarea name="message" class="form-control" id="replyMessage" cols="30" rows="3" placeholder="Message"></textarea>';
				newComment += 							'';
				newComment += 							'<button style="float:right; margin-top:8px;" class="btn" type="submit">??????</button>';
				newComment += 							'<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">????????? ?????????</div>';
				newComment += 							'<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>';
				newComment += 						'</div>';
				newComment += 					'</div>';
				newComment += 				'</div>';
				newComment += 			'</div>';
				newComment += 		'</div>';
				newComment += 	'</div>';
				newComment += '</div>';
			
				collapseOne.append(newComment);
			}
		});
	}
    
    /*
    	?????? ????????? ??????
    	fbNo : ????????? ??? ??????
    	commentNo : ???????????? ?????? ?????? ??????
    	replySection : ?????? ?????? ????????? level
    */
    function replyWrite(fbNo, commentNo, replySection, depth){
    	var replyMessage = $(replySection).prev().val();
    	var secretCheck = "1";
    	var commentsID = null;
    	
    	if($(replySection).next().next().next().children('input').is(':checked')){
    		secretCheck = "1";
		} else {
			secretCheck = "0";
		}
	
    	// depth ??????
		if(depth==0) {		// ?????? ????????? (depth : 1)
			depth=1;	
		} 
    	
    	$.ajax({
    		type: "post",
    		url: "/writeReply",
    		data: {"fbNo": fbNo, "parentCommentNo": commentNo, "comments": replyMessage, "secret": secretCheck, "replyDepth": depth },
    		dataType: "text",
    		success:function(data){
    			var reply = JSON.parse(data);
    			let replyAdd = $(replySection).parent().parent().parent().parent().parent().next().next();
    			
    			var appendLists = '';
    			appendLists +=	'<div class="row">';
				appendLists += 		'<div class="col-12" style="margin-top : 30px;">';
				appendLists += 			'<div class="text" >';
				
				if(reply.secret == true){
					appendLists += 			'<h5 style="display:inline-block;"><img src="https://mblogthumb-phinf.pstatic.net/20150831_112/koowq_1441021325694Id6se_PNG/%C0%DA%B9%B0%BC%E8_%BF%F8%C7%FC_%BE%C6%C0%CC%C4%DC-02.png?type=w420" alt="" style="width:30px; ">&nbsp;&nbsp;*******</h5>';
				} else if(reply.secret == false){
					appendLists += 			'<h5 style="padding-top:5px; display:inline-block;"><img style="width:30px; " src="https://louisville.edu/enrollmentmanagement/images/person-icon/image" alt="">'+ reply.commentWriter +'</h5>';
				}
				appendLists += 				'&nbsp;&nbsp;&nbsp;&nbsp;<span>'+ reply.recordDate + '</span>';
				
				if(reply.modification == true){
					appendLists += 			'(?????????)';
				} 
				
				var id = '<c:out value="${id}"/>';
				if(reply.commentWriter == id){
					appendLists += 			'&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span><br>';
				}
				
				appendLists += 				'<div class="col-10" style="display:inline-block;">'+ reply.comments +'</div>';
				appendLists += 				'<div class="col-1" id="reply2' + reply.commentNo + '" style="display:inline-block;  float:right; text-align:right;">';
				appendLists += 					'<a role="button" class="" aria-expanded="true" aria-controls="reply2-div' + reply.commentNo + '" data-toggle="collapse" data-parent="#reply2' + reply.commentNo + '" href="#reply2-div' + reply.commentNo + '">??????7</a>';
				appendLists += 				'</div>'
				appendLists += 			'</div>';
				appendLists += 			'<div class="panel single-accordion">';
				appendLists += 				'<div id="reply2-div' + reply.commentNo +' class="accordion-content collapse" >';
				appendLists += 					'<div class="col-12" style="outline: solid gray; margin-top:30px; margin-bottom: 30px;">';
				appendLists += 						'<div class="row">';
				appendLists += 							'<div class="col-12" style="padding-top: 35px; padding-bottom: 20px; margin:0 auto;">';
				appendLists += 								'<div class="text">';
				appendLists += 									'<h5>'+ id +'</h5>';
				appendLists += 									'<textarea name="message" class="form-control" id="replyMessage" cols="30" rows="3" placeholder="Message"></textarea>';
				appendLists += 									'<button style="float:right; margin-left:10px; margin-top:8px;" class="btn" type="button" >??????</button>';
				appendLists += 									'<button style="float:right; margin-top:8px;" class="btn" type="submit">??????</button>';
				appendLists += 									'<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">????????? ?????????</div>';
				appendLists += 									'<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>';
				appendLists += 								'</div>';
				appendLists += 							'</div>';
				appendLists += 						'</div>';
				appendLists += 					'</div>';
				appendLists += 				'</div>';
				appendLists += 			'</div>';
				
				appendLists += 		'</div>';
				appendLists += 	'</div>';
				
				replyAdd.append(appendLists);
    		}
    	});    	
    }
    
    /*
    	????????? ?????? ??????
    */
    function replyList(fbNo, commentNo, replyListSection, replyCount){
    	// close
    	if($(replyListSection).parent().next().attr("class").match("show")){
    		$(replyListSection).parent().next().children().remove();
    	} 
    	// open
    	else {
    		$.ajax({
    			type: "post",
        		url: "/showReplyList",
        		data: {"fbNo": fbNo, "parentCommentNo": commentNo },
        		dataType: "text",
        		success:function(data){
        			var replies = JSON.parse(data);
        			var appendLists = '<div class="col-11 collapseTwo'+ replyCount +'" style="margin: auto;">';
        			
        			for(var i=0; i<replies.length; i++){
        				appendLists +=	'<div class="row">';
        				appendLists += 		'<div class="col-12" style="margin-top : 30px;">';
        				appendLists += 			'<div class="text" >';
        				
        				if(replies[i].secret == true){
        					appendLists += 			'<h5 style="display:inline-block;"><img src="https://mblogthumb-phinf.pstatic.net/20150831_112/koowq_1441021325694Id6se_PNG/%C0%DA%B9%B0%BC%E8_%BF%F8%C7%FC_%BE%C6%C0%CC%C4%DC-02.png?type=w420" alt="" style="width:30px; ">&nbsp;&nbsp;*******</h5>';
        				} else if(replies[i].secret == false){
        					appendLists += 			'<h5 style="padding-top:5px; display:inline-block;"><img style="width:30px; " src="https://louisville.edu/enrollmentmanagement/images/person-icon/image" alt="">'+ replies[i].commentWriter +'</h5>';
        				}
        				appendLists += 				'&nbsp;&nbsp;&nbsp;&nbsp;<span>'+ replies[i].recordDate + '</span>';
        				
        				if(replies[i].modification == true){
        					appendLists += 			'(?????????)';
        				} 
        				
        				var id = '<c:out value="${id}"/>';
        				if(replies[i].commentWriter == id){
        					appendLists += 			'&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>??????</span><br>';
        				}
        				
        				appendLists += 				'<div class="col-10" style="display:inline-block;">'+ replies[i].comments +'</div>';
        				appendLists += 				'<div class="col-1" id="reply2' + replies[i].commentNo + '" style="display:inline-block;  float:right; text-align:right;">';
        				appendLists += 					'<a role="button" class="" aria-expanded="true" aria-controls="reply2-div' + replies[i].commentNo + '" data-toggle="collapse" data-parent="#reply2' + replies[i].commentNo + '" href="#reply2-div' + replies[i].commentNo + '">??????7</a>';
        				appendLists += 				'</div>'
        				appendLists += 			'</div>';
        				appendLists += 			'<div class="panel single-accordion">';
        				appendLists += 				'<div id="reply2-div' + replies[i].commentNo +' class="accordion-content collapse" >';
        				appendLists += 					'<div class="col-12" style="outline: solid gray; margin-top:30px; margin-bottom: 30px;">';
        				appendLists += 						'<div class="row">';
        				appendLists += 							'<div class="col-12" style="padding-top: 35px; padding-bottom: 20px; margin:0 auto;">';
        				appendLists += 								'<div class="text">';
        				appendLists += 									'<h5>'+ id +'</h5>';
        				appendLists += 									'<textarea name="message" class="form-control" id="replyMessage" cols="30" rows="3" placeholder="Message"></textarea>';
        				appendLists += 									'<button style="float:right; margin-left:10px; margin-top:8px;" class="btn" type="button" >??????</button>';
        				appendLists += 									'<button style="float:right; margin-top:8px;" class="btn" type="submit">??????</button>';
        				appendLists += 									'<div class="m-2" style="vertical-align:top; margin-left:5px; padding-right:10px; float:right; display:inline-block; padding-top:10px;">????????? ?????????</div>';
        				appendLists += 									'<div class="m-2" style="display:inline-block; float:right; padding-top:10px;"><input type="checkbox" id="secretCheck" style="width:20px; height:20px;" checked></div>';
        				appendLists += 								'</div>';
        				appendLists += 							'</div>';
        				appendLists += 						'</div>';
        				appendLists += 					'</div>';
        				appendLists += 				'</div>';
        				appendLists += 			'</div>';
        				
        				appendLists += 		'</div>';
        				appendLists += 	'</div>';
        				//appendLists += 
        				appendLists += '';
        				appendLists += '';
        			}
        			
        			appendLists += '</div>';
        			let collapseTwo = $(replyListSection).parent().next();
        			collapseTwo.append(appendLists);
        		}
        	});    	
    	}
    }
    
    
    </script>
</body>
</html>