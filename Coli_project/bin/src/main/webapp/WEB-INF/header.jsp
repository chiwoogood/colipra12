<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authentication property="principal" var="userDetails" />
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

</head>
<body>
   <div class="preloader"></div>

   <div class="nav nav-overlay">
      <div class="nav__content">
         <div class="container">
            <div class="row p-4 p-md-0 flex-column-reverse flex-md-row g-md-5 nav__block">
               <div class="col-md-5">
                  <ul class="nav__list d-none d-md-block">
                     <li class="nav__list-item active-nav"><a href="${cpath}/" class="hover-target">Home</a>
                     </li>
                     <li class="nav__list-item"><a href="${cpath}/member/login" class="hover-target">LogIn</a></li>
                     <li class="nav__list-item"><a href="${cpath}/plan" class="hover-target">Plan</a></li>
                     <li class="nav__list-item"><a href="${cpath}/draw" class="hover-target">Draw</a></li>
                     <li class="nav__list-item"><a href="${cpath}/board/gallery" class="hover-target">Gallery</a>
                     </li>
                     <li class="nav__list-item"><a href="contact.html" class="hover-target">guide</a></li>
                  </ul>
               </div>
               <div class="col-md-4 text-white">
                  <h3 class="text-white fw-bold nav__block-item">AI Draw</h3>
                  <p class="text-light nav__block-item">카메라 앞에서 움직이면, 내 포즈와 똑같은 모델이 생성됩니다.
                  캐릭터를 업로드 한 뒤에는 내 움직임에 따라 내 캐릭터도 함께 움직일거예요 !</p>
                  <ul class="list-unstyled text-light nav__block-item">
                     <li><a href="onepage.html" class="text-white">AI Draw - 클릭형</a></li>
                     <li><a href="onepage.html" class="text-white">AI Draw - 이미지업로드</a></li>
                     <li><a href="onepage.html" class="text-white">AI Draw - 실시간 영상촬영</a></li>
                  </ul>
               </div>
               <div class="col-md-3 text-white">
                  <h3 class="text-white fw-bold nav__block-item" onclick="location.href='${cpath}/member/mypage';" style="cursor:pointer; user-select: none;">MyPage</h3>
                  <ul class="list-unstyled nav__block-item">
                     <li><a href="${cpath}/member/modify" class="text-white">My Account</a></li>
                     <li><a href="${cpath}/mygallery/{username}" class="text-white">My Gallery</a></li>
                     <li><a href="${cpath}/member/myplan" class="text-white">My Plan</a></li>
                     <c:if test="${not empty user}">
                     	<li><a href="${cpath}/member/logout" class="text-white">Logout</a></li>
                     </c:if>
                     <c:if test="${empty user}">
                     	<li><a href="${cpath}/member/login" class="text-white">Login</a></li>
                     </c:if>
                  </ul>
               </div>
            </div>
         </div>

      </div>
   </div>

   <div class="main-logo">
      <a href="${cpath}/">DrawColi.</a>
   </div>
   
   <!-- 로그인했을 때 상단 -->
   <c:if test="${not empty user}">
      <form id="app-cover">
        <div id="select-box">
          <input type="checkbox" id="options-view-button">
          <div id="select-button" class="brd">
            <div id="selected-value">
            <c:if test="${not empty user}">
             <p>안녕하세요, <c:out value="${user.name}"/>님!</p>
           </c:if>
              
            </div>
            <div id="chevrons">
              <i class="fas fa-chevron-up"></i>
              <i class="fas fa-chevron-down"></i>
            </div>
          </div>
          <div id="options">
            <div class="option">
              <input class="s-c top" type="radio" name="platform" value="codepen">
              <input class="s-c bottom" type="radio" name="platform" value="codepen">
              <i class="fab fa-codepen"></i>
              <span class="label">My Page</span>
              <span class="opt-val">My Page</span>
            </div>
            <div class="option">
              <input class="s-c top" type="radio" name="platform" value="dribbble">
              <input class="s-c bottom" type="radio" name="platform" value="dribbble">
              <i class="fab fa-dribbble"></i>
              <span class="label">회원정보수정</span>
              <span class="opt-val">회원정보수정</span>
            </div>
            <div class="option">
              <input class="s-c top" type="radio" name="platform" value="behance">
              <input class="s-c bottom" type="radio" name="platform" value="behance">
              <i class="fab fa-behance"></i>
              <span class="label">내갤러리</span>
              <span class="opt-val">내갤러리</span>
            </div>
            <div class="option">
              <input class="s-c top" type="radio" name="platform" value="hackerrank">
              <input class="s-c bottom" type="radio" name="platform" value="hackerrank">
              <i class="fab fa-hackerrank"></i>
              <span class="label">나의 구독</span>
              <span class="opt-val">나의 구독</span>
            </div>
            <div id="option-bg"></div>
          </div>
        </div>
      </form>
   </c:if>
   
   <div class="side-nav-bar">
      <input id="menu-toggle" type="checkbox" />
      <label class="menu-btn" for="menu-toggle">
         <span></span>
      </label>
   </div>
   
</body>
</html>