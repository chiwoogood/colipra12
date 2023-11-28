<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
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

   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
               <h2 class="login-title">My Page</h2>
            </div><!--banner-content-->
         </div><!--slider-item-->
      </div>
      </section>
      
      <section class="mypage-section">
         <div class="titleArea">
             <h2>${user.member.name}님의 페이지</h2>
         </div>
         <div class="xans-element- xans-myshop xans-myshop-asyncbankbook ec-base-box gHalf">
            <ul>
               <li class="">
                     <strong class="title">이름</strong>
                     <strong class="data use">&nbsp;<span>${user.member.name}</span></strong>
                 </li>
                 <li class="">
                     <strong class="title">이메일</strong>
                     <strong class="data"><span></span>${user.member.email}</strong>
                 </li>
                 <li class="">
                     <strong class="title">닉네임</strong>
                     <strong class="data"><span>${user.member.nickname}</span></strong>
                 </li>
                  <li class="">
                     <strong class="title">아이디</strong>
                     <strong class="data"><span>${user.member.username}</span></strong>
                 </li>
                 <li class="">
                     <strong class="title">핸드폰번호</strong>
                     <strong class="data"><span>${user.member.phone}</span></strong>
                 </li>
                 <li class="">
                     <strong class="title">회원등급</strong>
                     <strong class="data"><span>${auth}</span></strong>
                 </li>
             </ul>
         </div>
         
         <div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main ">
            <div class="shopMain modify">
               <div class="inBox" onclick="window.open('${cpath}/member/modify','_self')">
                  <img src="${cpath}/images/image/account.png">
                     <h3>
                        <a href="${cpath}/member/modify">
                           <strong>Edit</strong>
                           회원정보수정
                        </a>
                     </h3>
                     <p>
                        <a href="${cpath}/member/modify">
                        회원이신 고객님의 개인정보를 관리하는 공간입니다.
                        <br>
                        개인정보를 최신 정보로 유지하시면 보다 간편히 드로콜리를 사용하실 수 있습니다.
                        </a>
                     </p>
                 </div>
            </div>
         </div>
         
         <div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main ">
            <div class="shopMain mygallery">
               <div class="inBox" onclick="window.open('${cpath}/member/mygallery','_self')">
                  <img src="${cpath}/images/image/mygallery.png">
                     <h3>
                        <a href="${cpath}/member/mygallery">
                           <strong>My Gallery</strong>
                           내 갤러리
                        </a>
                     </h3>
                     <p>
                        <a href="${cpath}/member/mygallery">
                        고객님께서 작업하신 내역을 확인하실 수 있습니다.
                        <br>
                        지금까지 작업하신 내역을 확인해보세요.
                        </a>
                     </p>
                 </div>
            </div>
         </div>
         
         <div id="myshopMain" class="xans-element- xans-myshop xans-myshop-main ">
            <div class="shopMain myplan">
               <div class="inBox" onclick="window.open('${cpath}/member/myplan','_self')">
                  <img src="${cpath}/images/image/myplan.png">
                     <h3>
                        <a href="${cpath}/member/myplan">
                           <strong>My Plan</strong>
                           나의 구독
                        </a>
                     </h3>
                     <p>
                        <a href="${cpath}/member/myplan">
                        고객님께서 구독하고 계신 플랜을 확인할 수 있습니다.
                        <br>
                        고객님의 결제 정보, 구독중인 플랜, 라이선스 사용기간을 확인하세요.
                        </a>
                     </p>
                 </div>
            </div>
         </div>
         
      </section>
      
      
      <div style="margin-top: 150px;"></div>
      
      <section id="subscribe" class="scrollspy-section padding-small">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <figure class="subscribe-image">
                     <img src="${cpath}/images/subscribe-image.png" alt="subscribe">
                  </figure>
               </div>
               <div class="col-md-6">
                  <div class="subscribe-content">
                     <h2 class="section-title">1:1 문의</h2>
                     <p>드로콜리를 사용하다가 궁금한 점이 있다면 1:1로 문의해주세요. 질문을 확인한 뒤 순차적으로 답변드리도록 하겠습니다.</p>
                     <form id="form">
                        <input type="text" name="title" placeholder="제목">
                        <textarea name="content" placeholder="문의 내용을 입력하세요." rows="5" style="resize: none; overflow-y: scroll; width: 100%; height: 150px; margin-top:10px;"></textarea>
                        <button class="btn btn-accent btn-rounded btn-full btn-xlarge">문의하기</button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
      

      <script src="${cpath}/js/jquery-1.11.0.min.js"></script>
      <script src="${cpath}/js/ui-easing.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
         crossorigin="anonymous"></script>
      <script src="${cpath}/js/plugins.js"></script>
      <script src="${cpath}/js/script.js"></script>
   
      
</body>

</html>