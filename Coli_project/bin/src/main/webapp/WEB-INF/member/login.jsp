<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<c:set var="cpath" value="${pageContext.request.contextPath}" />

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
					<h2 class="login-title">Member</h2>
				</div><!--banner-content-->
			</div><!--slider-item-->
		</div>
		</section>
		
		<div class="login-container">
		  <!-- Heading -->
		  <h1 class="login-h1">SIGN IN</h1>
		  
		  <!-- Links -->
		  <ul class="login-links">
		    <li>
		      <a href="#" id="signin">SIGN IN</a>
		    </li>
		    <li>
		      <a href="#" id="signup">SIGN UP</a>
		    </li>
		    <li>
		      <a href="#" id="reset">RESET</a>
		    </li>
		  </ul>
		  
		  <!-- Form -->
		  <form action="" method="post" class="login-form">
		    <!-- id input -->
		    <div class="input__block signin-input__block">
		       <input type="text" name="username" placeholder="id" class="input" id="id"   />
		    </div>
		    <!-- password input -->
		    <div class="input__block signin-input__block">
		       <input type="password" name="password" placeholder="Password" class="input" id="password"    />
		    </div>
		    <!-- repeat password input -->
		    <div class="input__block signup-input__block">
		       <input type="password" name="passwordConfirmation" placeholder="Repeat password" class="input" id="passwordConfirmation" />
		    </div>
		    <!-- name input -->
		    <div class="input__block signup-input__block">
		       <input type="text" name="name" placeholder="name" class="input" id="name"   />
		    </div>
		    <!-- nickname input -->
		    <div class="input__block signup-input__block">
		       <input type="text" name="nickname" placeholder="nickname" class="input" id="nickname"   />
		    </div>
		    <!-- email input -->
		    <div class="input__block signup-input__block">
		       <input type="email" name="email" placeholder="Email" class="input" id="email"   />
		    </div>
		    <!-- phone input -->
		    <div class="input__block signup-input__block">
		       <input type="tel" name="phone" placeholder="phone" class="input" id="phone"   />
		    </div>

		    <!-- sign in button -->
		    <button class="signin__btn">
		      Sign in
		    </button>
		  </form>
		  
		  <!-- separator -->
		  <div class="login-separator">
		    <p>OR</p>
		  </div>
		  
		  <!-- kakao button -->
		  <button class="google__btn" onclick="">
		    <i class="fa fa-google"></i>
		    Sign in with Kakao  <!-- 3cb823a0fd6225928e59284def536177 -->
		  </button>
		  
		  <!-- google button -->
		  <button class="github__btn">
		    <i class="fa fa-github"></i>
		    Sign in with Naver
		  </button>
		</div>


		<script src="${cpath}/js/jquery-1.11.0.min.js"></script>
		<script src="${cpath}/js/ui-easing.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
			crossorigin="anonymous"></script>
		<script src="${cpath}/js/plugins.js"></script>
		<script src="${cpath}/js/script.js"></script>
		
<script type="text/javascript">
			$(document).ready(function(){
			    let signup = $("#signup");
			    let signin = $("#signin");
			    let reset  = $("#reset");
			    let firstInput = $(".signin-input__block");
			    let hiddenInput = $(".signup-input__block");
			    let signinBtn  = $(".signin__btn");
			    let form = $(".login-form");
			
			    // 초기 화면 설정: id와 password만 보이게
			    firstInput.css("display", "block");
			    hiddenInput.css("display", "none");
			
			    //----------- sign up ---------------------
			    signup.on("click", function(e){
			        e.preventDefault();
			        $(".login-h1").text("SIGN UP");
			        $(this).css("opacity", "1");
			        $(this).siblings().css("opacity", "0.6");
			        form.attr("action", "join"); // 폼 액션을 회원가입으로 설정
			        firstInput.removeClass("signin-input__block").addClass("signup-input__block");
			        hiddenInput.css({
			            "opacity" : "1",
			            "display" : "block"
			        });
			        signinBtn.text("Sign up");
			    });
			
			    //----------- sign in ---------------------
			    signin.on("click", function(e){
			        e.preventDefault();
			        $(".login-h1").text("SIGN IN");
			        $(this).css("opacity", "1");
			        $(this).siblings().css("opacity", "0.6");
			        form.attr("action", "member/login"); // 폼 액션을 로그인으로 설정
			        firstInput.css("display", "block");
			        hiddenInput.css("display", "none");
			        signinBtn.text("Sign in");
			    });
			
			    //----------- reset ---------------------
			    reset.on("click", function(e){
			        e.preventDefault();
			        $(".input").val("");
			    });
			});
			</script>

		
		<!-- kakao -->
		
</body>

</html>