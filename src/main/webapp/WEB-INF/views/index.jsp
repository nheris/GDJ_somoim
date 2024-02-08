<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Somoim</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- CSS 임포트 -->
<c:import url="./temps/head_css.jsp"></c:import>
</head>

<body>
	<!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->
		<!-- 내비게이터 import -->
		<c:import url="./temps/header.jsp"></c:import>
	<section class="hero-area overlay">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1 col-md-12 col-12">
					<div class="hero-text text-center">
						<!-- Start Hero Text -->
						<div class="section-heading">
							<h2 class="wow fadeInUp" data-wow-delay=".3s">소모임 서비스에 오신걸
								환영 합니다!</h2>
							<p class="wow fadeInUp" data-wow-delay=".5s">우리동네 친구만들기! <br>혼자 외롭게 떨어져 지내는 타지 생활에 힘이 되는 친구를 만들어 보세요!</p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Start Categories Area -->
	<section class="categories">
		<div class="container">
			<div class="cat-inner">
				<div class="row">
					<div class="col-12 p-0">
						<div class="category-slider">
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/car.svg" alt="#">
								</div>
								<h3>Vehicle</h3>
								<h5 class="total">35</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/laptop.svg"
										alt="#">
								</div>
								<h3>Electronics</h3>
								<h5 class="total">22</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/matrimony.svg"
										alt="#">
								</div>
								<h3>Matrimony</h3>
								<h5 class="total">55</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/furniture.svg"
										alt="#">
								</div>
								<h3>Furnitures</h3>
								<h5 class="total">21</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/jobs.svg" alt="#">
								</div>
								<h3>Jobs</h3>
								<h5 class="total">44</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/real-estate.svg"
										alt="#">
								</div>
								<h3>Real Estate</h3>
								<h5 class="total">65</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/laptop.svg"
										alt="#">
								</div>
								<h3>Education</h3>
								<h5 class="total">35</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/hospital.svg"
										alt="#">
								</div>
								<h3>Health & Beauty</h3>
								<h5 class="total">22</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/tshirt.svg"
										alt="#">
								</div>
								<h3>Fashion</h3>
								<h5 class="total">25</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/education.svg"
										alt="#">
								</div>
								<h3>Education</h3>
								<h5 class="total">42</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/controller.svg"
										alt="#">
								</div>
								<h3>Gadgets</h3>
								<h5 class="total">32</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/travel.svg"
										alt="#">
								</div>
								<h3>Backpacks</h3>
								<h5 class="total">15</h5>
							</a>
							<!-- End Single Category -->
							<!-- Start Single Category -->
							<a href="category.html" class="single-cat">
								<div class="icon">
									<img src="/resources/assets/images/categories/watch.svg"
										alt="#">
								</div>
								<h3>Watches</h3>
								<h5 class="total">65</h5>
							</a>
							<!-- End Single Category -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /End Categories Area -->

	<!-- Start Items Grid Area -->
	<section class="items-grid section custom-padding">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2 class="wow fadeInUp" data-wow-delay=".4s">추천 모임 리스트</h2>
						<p class="wow fadeInUp" data-wow-delay=".6s">
							활동인원이 많은 모임과 최근에 개설된 모임을 참고하여<br> 모임에 가입해 보세요
						</p>
					</div>
				</div>
			</div>
			<div class="single-head">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/assets/images/items-grid/img1.jpg" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/assets/images/items-grid/author-1.jpg"
											alt="#"> <span>Smith jeko</span></a>
									</div>
									<p class="sale">For Sale</p>
								</div>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">Mobile Phones</a>
									<h3 class="title">
										<a href="item-details.html">Apple Iphone X</a>
									</h3>
									<p class="update-time">Last Updated: 1 hours ago</p>
									<ul class="rating">
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><a href="javascript:void(0)">(35)</a></li>
									</ul>
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i> New York, US</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i> Feb 18, 2023</a></li>
									</ul>
								</div>
								<div class="bottom-content">
									<p class="price">
										Start From: <span>$200.00</span>
									</p>
									<a href="javascript:void(0)" class="like"><i
										class="lni lni-heart"></i></a>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="single-grid wow fadeInUp" data-wow-delay=".4s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/assets/images/items-grid/img2.jpg" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/assets/images/items-grid/author-2.jpg"
											alt="#"> <span>Alex Jui</span></a>
									</div>
									<p class="sale">For Sale</p>
								</div>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">Real Estate</a>
									<h3 class="title">
										<a href="item-details.html">Amazing Room for Rent</a>
									</h3>
									<p class="update-time">Last Updated: 2 hours ago</p>
									<ul class="rating">
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><a href="javascript:void(0)">(20)</a></li>
									</ul>
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i> Dallas, Washington</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i> Jan 7, 2023</a></li>
									</ul>
								</div>
								<div class="bottom-content">
									<p class="price">
										Start From: <span>$450.00</span>
									</p>
									<a href="javascript:void(0)" class="like"><i
										class="lni lni-heart"></i></a>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="single-grid wow fadeInUp" data-wow-delay=".6s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/assets/images/items-grid/img3.jpg" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/assets/images/items-grid/author-3.jpg"
											alt="#"> <span>Devid Milan</span></a>
									</div>
									<p class="sale">For Sale</p>
								</div>
								<p class="item-position">
									<i class="lni lni-bolt"></i> Featured
								</p>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">Mobile Phones</a>
									<h3 class="title">
										<a href="item-details.html">Canon SX Powershot D-SLR</a>
									</h3>
									<p class="update-time">Last Updated: 3 hours ago</p>
									<ul class="rating">
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><a href="javascript:void(0)">(55)</a></li>
									</ul>
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i> New York, US</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i> Mar 18, 2023</a></li>
									</ul>
								</div>
								<div class="bottom-content">
									<p class="price">
										Start From: <span>$700.00</span>
									</p>
									<a href="javascript:void(0)" class="like"><i
										class="lni lni-heart"></i></a>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/assets/images/items-grid/img4.jpg" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/assets/images/items-grid/author-4.jpg"
											alt="#"> <span>Jesia Jully</span></a>
									</div>
									<p class="sale">For Sale</p>
								</div>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">Vehicles</a>
									<h3 class="title">
										<a href="item-details.html">BMW 5 Series GT Car</a>
									</h3>
									<p class="update-time">Last Updated: 4 hours ago</p>
									<ul class="rating">
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><a href="javascript:void(0)">(35)</a></li>
									</ul>
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i> New York, US</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i> Apr 12, 2023</a></li>
									</ul>
								</div>
								<div class="bottom-content">
									<p class="price">
										Start From: <span>$1000.00</span>
									</p>
									<a href="javascript:void(0)" class="like"><i
										class="lni lni-heart"></i></a>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="single-grid wow fadeInUp" data-wow-delay=".4s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/assets/images/items-grid/img5.jpg" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/assets/images/items-grid/author-5.jpg"
											alt="#"> <span>Thomas Deco</span></a>
									</div>
									<p class="sale">For Sale</p>
								</div>
								<p class="item-position">
									<i class="lni lni-bolt"></i> Featured
								</p>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">Apple</a>
									<h3 class="title">
										<a href="item-details.html">Apple Macbook Pro 13 Inch</a>
									</h3>
									<p class="update-time">Last Updated: 5 hours ago</p>
									<ul class="rating">
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><a href="javascript:void(0)">(35)</a></li>
									</ul>
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i> Louis, Missouri, US</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i> May 25, 2023</a></li>
									</ul>
								</div>
								<div class="bottom-content">
									<p class="price">
										Start From: <span>$550.00</span>
									</p>
									<a href="javascript:void(0)" class="like"><i
										class="lni lni-heart"></i></a>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="single-grid wow fadeInUp" data-wow-delay=".6s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/assets/images/items-grid/img6.jpg" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/assets/images/items-grid/author-6.jpg"
											alt="#"> <span>Jonson zack</span></a>
									</div>
									<p class="sale">For Sale</p>
								</div>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">Restaurant</a>
									<h3 class="title">
										<a href="item-details.html">Cream Restaurant</a>
									</h3>
									<p class="update-time">Last Updated: 7 hours ago</p>
									<ul class="rating">
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><i class="lni lni-star-filled"></i></li>
										<li><a href="javascript:void(0)">(20)</a></li>
									</ul>
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i> New York, US</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i> Feb 18, 2023</a></li>
									</ul>
								</div>
								<div class="bottom-content">
									<p class="price">
										Start From: <span>$500.00</span>
									</p>
									<a href="javascript:void(0)" class="like"><i
										class="lni lni-heart"></i></a>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="./temps/footer.jsp"></c:import>
	<script type="text/javascript">
		//========= Category Slider 
		tns({
			container : '.category-slider',
			items : 3,
			slideBy : 'page',
			autoplay : false,
			mouseDrag : true,
			gutter : 0,
			nav : false,
			controls : true,
			controlsText : [ '<i class="lni lni-chevron-left"></i>',
					'<i class="lni lni-chevron-right"></i>' ],
			responsive : {
				0 : {
					items : 1,
				},
				540 : {
					items : 2,
				},
				768 : {
					items : 4,
				},
				992 : {
					items : 5,
				},
				1170 : {
					items : 6,
				}
			}
		});
	</script>
</body>

</html>