<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

	<link rel="stylesheet" type="text/css" href="icomoon/icomoon.css">
	<link rel="stylesheet" type="text/css" href="css/vendor.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&display=swap"
		rel="stylesheet">
</head>
<body>

	<%@ include file="/WEB-INF/header.jsp"%>

	<section id="intro" class="scrollspy-section">
		<div class="main-slider">
			<div class="slider-item jarallax" data-speed="0.2">
				<img src="images/main-banner1.png" alt="banner" class="jarallax-img">
				<div class="banner-content">
					<h2 class="banner-title txt-fx">Draw Coli</h2>
					<div class="btn-wrap">
						<a href="${cpath}/board/draw" class="btn-with-line">Let's Draw</a>
					</div>
				</div><!--banner-content-->
			</div><!--slider-item-->

			<div class="slider-item jarallax" data-speed="0.2">
				<img src="images/main-banner2.png" alt="banner" class="jarallax-img">
				<div class="banner-content">
					<h2 class="banner-title txt-fx">Move, it will be drawn</h2>
					<div class="btn-wrap">
						<a href="#" class="btn-with-line">Let's Draw</a>
					</div>
				</div><!--banner-content-->
			</div><!--slider-item-->

			<div class="slider-item jarallax" data-speed="0.2">
				<img src="images/main-banner3.png" alt="banner" class="jarallax-img">
				<div class="banner-content">
					<h2 class="banner-title txt-fx">My own character</h2>
					<div class="btn-wrap">
						<a href="draw.jsp" class="btn-with-line">Let's Draw</a>
					</div>
				</div><!--banner-content-->
			</div><!--slider-item-->
		</div><!--slider-->

		<div class="button-container">
			<button class="prev slick-arrow">
				<i class="icon icon-chevron-thin-left"></i>
			</button>
			<button class="next slick-arrow">
				<i class="icon icon-chevron-thin-right"></i>
			</button>
		</div>
	</section>

	<section id="about" class="scrollspy-section padding-xlarge">
		<div class="container">
			<div class="row">

				<div class="col-md-12">

					<div class="section-header">
						<div class="title">
							<span>What's Drawcoli?</span>
						</div>
						<h2 class="section-title">About Us</h2>
					</div>
				</div>

			</div>

			<div class="row">

				<div class="col-md-6">
					<figure class="jarallax-keep-img">
						<img src="images/singleimage.jpg" alt="about us" class="jarallax-img single-image">
					</figure>
				</div>
				<div class="col-md-6 description text-lead">
					<p><strong>처음 그림을 그리시는 분들도 쉽게 그림을 그릴 수 있도록 도와주는 웹 서비스입니다.
					인체그리기가 어려우신 분들은 저희 드로콜리를 통해 자동으로 생성된 3D모델 위에 작업을 하게되면
					완벽한 인체 그림을 그릴 수 있습니다.</strong></p>
					<p>저희가 제공하는 기본 포즈들을 이용해서 모델을 생성해도 되고,
					원하는 포즈를 취한 이미지를 업로드해서 모델을 생성해도 좋습니다.
					두 가지 방법으로 원하는 포즈를 찾지 못했다면 직접 영상을 촬영해보세요! 나의 움직임에 따라 모델이 생성됩니다.</p>
					<p>드로콜리가 제공하는 캐릭터를 이용해 나만의 캐릭터를 만들어보세요.
					내가 가지고 있는 캐릭터가 있다면 생성된 모델에 적용시켜보세요!
					내가 원하는 자세로 캐릭터가 생성됩니다.</p>

					<div class="btn-wrap">
						<a href="#" class="btn btn-accent btn-xlarge btn-rounded">GO TO MAKE</a>
					</div>

				</div>

			</div>

		</div>
	</section>

	<section id="services" class="scrollspy-section padding-large">
		<div class="container">
			<div class="row">
				<div class="section-header col-12">
					<div class="title">
						<span>Our Membership</span>
					</div>
					<h2 class="section-title">Service Plan</h2>
				</div>

			</div>

			<div class="row">

				<div class="col-md-4">
					<div class="services-item">
						<span class="number">01</span>
						<h3>Free</h3>
						<p>• 500 개 이상의 다양한 포즈 선택<br>
						   • AI 드로잉 (일 10회 제공)<br>
						   • 기본 캐릭터 제공<br>
						   • 모델 및 캐릭터 다운로드 (일 3회)</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="services-item">
						<span class="number">02</span>
						<h3>Standard</h3>
						<p>• 500 개 이상의 다양한 포즈 선택<br>
						   • 이미지 업로드를 통한 포즈 생성<br>
						   • AI 드로잉 (무제한)<br>
						   • 기본 캐릭터 제공<br>
						   • 모델 및 캐릭터 다운로드 (무제한)</p>
					</div>

				</div>

				<div class="col-md-4">
					<div class="services-item">
						<span class="number">03</span>
						<h3>Pro</h3>
						<p>• 500 개 이상의 다양한 포즈 선택<br>
						   • 이미지 업로드를 통한 포즈 생성<br>
						   • 영상 인식을 통한 포즈 생성<br>
						   • AI 드로잉 (무제한)<br>
						   • 기본 캐릭터 제공<br>
						   • 모델 및 캐릭터 다운로드 (무제한)</p>
					</div>
				</div>

			</div>

		</div>
	</section>

	<section id="latest-blog" class="scrollspy-section bg-grey padding-large">
		<div class="container">

			<div class="row">

				<div class="col">

					<div class="section-header">
						<div class="title">
							<span>read our gallery</span>
						</div>
						<h2 class="section-title">User Gallery</h2>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-md-12">

					<div class="post-grid">
						<div class="row">

							<div class="col-md-4">

								<article class="post-item">

									<figure>
										<a href="#" class="image-hvr-effect">
											<img src="images/postimg1.jpg" alt="post" class="post-image">
										</a>
									</figure>

									<div class="post-content">
										<div class="meta-date">Mar 30, 2021</div>
										<h3 class="post-title"><a href="#">modern vibes bedrooms, todays trending
												design</a></h3>
										<p>Lectus molestie id enim ipsum. Netus sed cursus nibh iaculis ipsum turpis
											nulla blandit dui.</p>
									</div>
								</article>

							</div>

							<div class="col-md-4">

								<article class="post-item">
									<figure>
										<a href="#" class="image-hvr-effect">
											<img src="images/postimg2.jpg" alt="post" class="post-image">
										</a>
									</figure>
									<div class="post-content">
										<div class="meta-date">Mar 29, 2021</div>
										<h3 class="post-title"><a href="#">How to make minimalist living rooms
												pop-out</a></h3>
										<p>Lectus molestie id enim ipsum. Netus sed cursus nibh iaculis ipsum turpis
											nulla blandit dui.</p>
									</div>
								</article>
							</div>

							<div class="col-md-4">
								<article class="post-item">
									<figure>
										<a href="#" class="image-hvr-effect">
											<img src="images/postimg3.jpg" alt="post" class="post-image">
										</a>
									</figure>
									<div class="post-content">
										<div class="meta-date">Mar 27, 2021</div>
										<h3 class="post-title"><a href="#">how to make your resort that looks
												outstanding</a></h3>
										<p>Lectus molestie id enim ipsum. Netus sed cursus nibh iaculis ipsum turpis
											nulla blandit dui.</p>
									</div>
								</article>
							</div>

						</div>
					</div>

				</div>



			</div>

			<div class="row">
				<div class="col">

					<div class="btn-wrap align-center">
						<a href="#" class="btn btn-xlarge btn-accent btn-rounded">View all gallery</a>
					</div>

				</div>
			</div>

		</div>
	</section>
	
	<div id="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="copyright">
						<p>© 2023 DrawColi. All rights reserved.</p>
					</div>
				</div>
				<div class="col-md-6">
					<div class="copyright text-right">
						<p>DrawColi by TeamColi</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/ui-easing.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/script.js"></script>

</body>
</html>