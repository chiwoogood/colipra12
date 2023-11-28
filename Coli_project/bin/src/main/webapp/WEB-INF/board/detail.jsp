<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@page import="kr.spring.service.FileUtilsService"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>DrawColi</title>
  <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="format-detection" content="telephone=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="author" content="TemplatesJungle">
	<meta name="keywords" content="Free HTML Template">
	<meta name="description" content="Free HTML Template">
	
	<link rel="stylesheet" type="text/css" href="${cpath}/icomoon/icomoon.css">
	<link rel="stylesheet" type="text/css" href="${cpath}/css/vendor.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="${cpath}/css/style.css">
	<link rel="stylesheet" type="text/css" href="${cpath}/css/pricing-plan.css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&display=swap"
		rel="stylesheet">
		
	<link rel="stylesheet" type="text/css" href="${cpath}/css/form.css">
</head>
<body>
		<%@ include file="/WEB-INF/header.jsp"%>
		<section id="login-intro" class="login-section">
		<div class="log-in">
			<div class="login-top">
				<img src="${cpath}/images/main-banner1.png" alt="banner" class="login-img">
				<div class="login-content">
					<h2 class="login-title">Gallery</h2>
				</div><!--banner-content-->
			</div><!--slider-item-->
		</div>
		</section>
		
		<div class="detail-form xans-element- xans-board xans-board-read-4 xans-board-read xans-board-4" style="overflow-y: hidden; margin: 0 390px 0 390px;">
			<div class="ec-base-table typeWrite ">
				<table border="1">
					<caption>갤러리 상세</caption>
					<colgroup>
						<col style="width:130px;">
						<col style="width:auto;">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">제목</th>
							<td>${article.atc_title}</td>
						</tr>
						<tr>
							<th scope="row">작성자</th>
                    		<td>${article.writer_id.name}</td>
                		</tr>
                		<tr>
							<td colspan="2">
                        		<ul class="etcArea">
		                            <li class="">
		                                <strong style="background: #fff; color: #666;">작성일</strong> 
		                                <span class="txtNum">${article.created_at}</span>
		                            </li>
		                            <li class="">
		                                <strong>조회수</strong> 
		                                <span class="txtNum">${article.atc_views}</span>
		                            </li>
                        		</ul>
								<div class="detail" style="text-align: center;">
									 <c:forEach var="file" items="${article.articleFiles}">
									    <%-- 파일 경로에서 파일명만 추출 --%>
										<c:set var="fileName" value="${FileUtilsService().getFileName(file.file_path)}" />
									    <%-- 이미지 로드 --%>
										<img src="${cpath}/uploadFile/${fileName}" alt="Image">
									</c:forEach>
									<br>
									<div class="fr-view fr-view-article" style="border: none;">
										<p>
										${article.atc_content}
										</p>
									</div>
								</div>
                   			</td>
                		</tr>
                		<tr class="attach ">
							<th scope="row">첨부파일</th>
                    		<td>
                    			<p style="cursor: default;">${fileName}</p> 
                 			</td>
                		</tr>
					</tbody>
				</table>
			</div>
			<div class="ec-base-button ">
            <span class="gLeft">
                <a href="${cpath}/board/gallery" class="Button button-rounded button-small" style="background: #E1E1E1;">목록</a>
            </span>
            <span class="gRight">
                <a href="${cpath}/board/modify?atc_id=${article.atc_id}" class="Button button-rounded button-small">수정</a>
                <a href="${cpath}/board/remove?atc_id=${article.atc_id}" class="Button button-rounded button-small">삭제</a>
            </span>
        </div>
        <div class="xans-element- xans-board xans-board-commentpackage-1002 xans-board-commentpackage xans-board-1002 ">
        	<div class="xans-element- xans-board xans-board-commentlist-1002 xans-board-commentlist xans-board-1002">
        		<ul class="boardComment">
        		 	<c:choose>
                        <c:when test="${not empty comments}">
                            <c:forEach var="comment" items="${comments}">
                                <li class="first  xans-record-">
                                    <div class="commentTop">
                                        <strong class="name">${comment.cmt_writer_id.username} </strong>
                                        <span class="date">${comment.created_at}</span>
                                    </div>
                                    <span class="button">
                                        <a href="#none" onclick="">
                                            <img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_ico_modify.gif" alt="수정">
                                        </a>
                                        <a href="#none" onclick="">
                                            <img src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_ico_delete.gif" alt="삭제">
                                        </a>
                                    </span>
                                    <div class="comment">
                                        <span id="comment">${comment.cmt_content}</span>
                                    </div>
                                </li>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <li>댓글이 없습니다.</li>
                        </c:otherwise>
                    </c:choose>
        		</ul>
        	</div>
        	<form id="commentWriteForm" name="" method="post" target="_self" enctype="multipart/form-data">
				<input type="hidden" id="atc_id" name="atc_id" value="${article.atc_id}">
				<div class="xans-element- xans-board xans-board-commentwrite-1002 xans-board-commentwrite xans-board-1002 ">
					<div class="">
			            <fieldset>
							<legend>댓글 입력</legend>
			                <p>
			                	<strong>댓글달기</strong>
			                	<span class="">
			                		이름 : 
			                		<input id="comment_name" name="comment_name" fw-filter="isFill" fw-label="댓글작성자" fw-msg="" class="inputTypeText" placeholder="" value="${user.member.username}" type="text">
		                		</span>
				                <div class="view">
				                    <textarea id="comment_content" name="content" required></textarea>                    
				                    <a href="#none" onclick="commentSubmit(event)" class="submit  Button button-rounded button-small black" style="padding:25px; line-height:0;">확인</a>
				                </div>
				            </fieldset>
					</div>
				</div>
			</form>
        </div>
		</div>


  <script>
   function commentSubmit(e) {
	   e.preventDefault();
       var atc_id = $('#atc_id').val();
       var comment_content = $('#comment_content').val();
       
       $.ajax({
           type: 'POST',
           url: '${cpath}/board/commentRegister', // 댓글 작성을 처리하는 서버의 URL
           data: {"comment_content": comment_content, "atc_id": atc_id},
           success: function(response) {
        	   console.log("성공");
        	   $("#comment_content").val(''); // 댓글 입력란 초기화
               loadComments(); // 댓글 목록 갱신
           },
           error: function() {
        	   alert('댓글 작성 완료');
				location.href="/boot/board/detail/" + atc_id;
           }
       });
   }
   </script> 	
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
			
		<script src="${cpath}/js/jquery-1.11.0.min.js"></script>
		<script src="${cpath}/js/ui-easing.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
			crossorigin="anonymous"></script>
		<script src="${cpath}/js/plugins.js"></script>
		<script src="${cpath}/js/script.js"></script>
		
		

</body>

</html>