<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="cpath" value="${pageContext.request.contextPath}" />
<c:set var="user" value="${SPRING_SECURITY_CONTEXT.authentication.principal}" />
<c:set var="auth" value="${SPRING_SECURITY_CONTEXT.authentication.authorities}" />

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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>  
   <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&display=swap"
      rel="stylesheet">
   
   
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
      
     <section id="portfolio" class="scrollspy-section bg-dark padding-large">
   <div class="container">

      <div class="row">
         <div class="col-md-12">

            <div class="section-header">
               <div class="title">
                  <span>드로콜리 회원들의 작품을 감상하세요.</span>
               </div>
               <h2 class="section-title light">Gallery</h2>
            </div>
         </div>
      </div>

      <div class="row">

         <div id="filters" class="button-group d-flex flex-wrap gap-4 py-5" data-aos="fade-up">
             <a href="#" class="btn btn-outline-light rounded-pill text-uppercase is-checked" data-filter="*">전체</a>
             <a href="#" class="btn btn-outline-light rounded-pill text-uppercase" data-filter=".design">3DMODEL</a>
             <a href="#" class="btn btn-outline-light rounded-pill text-uppercase" data-filter=".interior">CHARACTER</a>
             <a href="#" class="btn btn-outline-light rounded-pill text-uppercase" data-filter=".landscape">WEBTOON</a>
         </div>
         
         <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#uploadModal">
           내 이미지 업로드
         </button>
         
         <!-- 업로드 모달 -->
         <div class="modal fade" id="uploadModal" tabindex="-1" role="dialog" aria-labelledby="uploadModalLabel" aria-hidden="true">
           <div class="modal-dialog" role="document">
             <div class="modal-content">
               <div class="modal-header">
                 <h5 class="modal-title" id="uploadModalLabel" style="width: 100px;">글쓰기</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                 </button>
               </div>
               <div class="modal-body">
                 <form id="uploadForm" action="${cpath}/board/upload" method="post" enctype="multipart/form-data">
                     <div class="form-group">
                         <label for="file">이미지 선택</label>
                         <input type="file" class="form-control" id="file" name="file" accept="image/*">
                     </div>
                     <div class="form-group">
                         <label for="category">카테고리 선택</label>
                         <select class="form-control" id="category" name="category">
                             <option value="design">3DMODEL</option>
                             <option value="interior">CHARACTER</option>
                             <option value="landscape">WEBTOON</option>
                         </select>
                     </div>
                     <button type="submit" class="btn btn-primary">업로드</button>
                 </form>
                </div>
               <div class="modal-footer">
                 <button type="button" class="btn btn-secondary close" data-dismiss="modal">닫기</button>
               </div>
             </div>
           </div>
         </div>

      </div>

		<c:set var="username" value="${user.member.username}" />
		<div id="imageContainer">
		    <!-- 모델에서 제공한 imageFiles 속성을 사용하여 이미지 표시 -->
		    <c:forEach var="imageFileName" items="${imageFiles}">
		        <img src="static/userImages/${user.member.username}/${imageFileName}">
		    </c:forEach>
		</div>

   </div>
</section>
</div>

   <script src="${cpath}/js/jquery-1.11.0.min.js"></script>
   <script src="${cpath}/js/ui-easing.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
           integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
           crossorigin="anonymous"></script>
   <script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
   <script src="${cpath}/js/plugins.js"></script>
   <script src="${cpath}/js/script.js"></script>
   
   
   <script>
       $(document).ready(function () {
           // Isotope 초기화
           var $grid = $('.grid').isotope({
               itemSelector: '.portfolio-item',
               layoutMode: 'fitRows'
           });
   
           // 필터링 버튼 클릭 이벤트 처리
           $('#filters a').on('click', function () {
               var filterValue = $(this).attr('data-filter');
               $grid.isotope({ filter: filterValue });
           });
       });
   </script>
	<script>
	$(document).ready(function () {
	    // 현재 로그인한 사용자의 username
	    var username = '${user.member.username}'; // JSP 표현식을 사용하여 username 설정
	
	    // 모달 표시
	    $('[data-toggle="modal"]').click(function () {
	        var targetModal = $(this).data('target');
	        $(targetModal).modal('show');
	    });
	
	    // 모달 닫기
	    $('.close').on('click', function() {
	        $('#uploadModal').modal('hide');
	    });
	
	    // 이미지 업로드 처리
	    $('#uploadForm').submit(function(e) {
	        e.preventDefault(); // 기본 폼 제출 동작 방지
	
	        var formData = new FormData(this); // 폼 데이터 생성
	        formData.append('username', ${user.member.username}); // username 추가
	
	        $.ajax({
	            url: '${cpath}/board/upload', // 업로드 URL
	            type: 'POST',
	            data: formData,
	            contentType: false,
	            processData: false,
	            success: function(response) {
	                // 업로드 성공 시 처리
	                console.log('Upload success');
	                $('#uploadModal').modal('hide'); // 모달 닫기
	            },
	            error: function() {
	                // 업로드 실패 시 처리
	                console.log('Upload error');
	            }
	        });
	    });
	});

	</script>

      
</body>

</html>