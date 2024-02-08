<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Somoim</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- CSS 임포트 -->
<c:import url="../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../temps/header.jsp"></c:import>
</head>
<body>
	<!-- 모임 홈 헤더 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">${dto.moimName}</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link" href="./home"
							style="color: white">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./board"
							style="color: white; font-weight: bold;">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="./together"
							style="color: white">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 본문 -->
	<div class="items-details section">
            <!-- 가림 -->
            <div class="category-grid-topbar">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6 col-12">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-grid-tab" data-bs-toggle="tab" data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid" aria-selected="true"><i class="lni lni-list"></i>자유</button>
                                <button class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false"><i class="lni lni-bookmark"></i>공지</button>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-grid" role="tabpanel" aria-labelledby="nav-grid-tab">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Mobile</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Apple Iphone X</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Boston</a></p>
                                    <ul class="info">
                                        <li class="price">$890.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Others</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Travel Kit</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>San Francisco</a></p>
                                    <ul class="info">
                                        <li class="price">$580.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Electronic</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Nikon DSLR Camera</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Alaska, USA</a></p>
                                    <ul class="info">
                                        <li class="price">$560.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Furniture</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Poster Paint</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Las Vegas</a></p>
                                    <ul class="info">
                                        <li class="price">$85.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-5.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Furniture</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Official Metting Chair</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Alaska, USA</a></p>
                                    <ul class="info">
                                        <li class="price">$750.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge rent">Rent</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Books &amp; Magazine</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Story Book</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>New York, USA</a></p>
                                    <ul class="info">
                                        <li class="price">$120.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-7.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Electronic</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Cctv camera</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Delhi, India</a></p>
                                    <ul class="info">
                                        <li class="price">$350.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Mobile</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Apple Iphone X</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Boston</a></p>
                                    <ul class="info">
                                        <li class="price">$890.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="image">
                                    <a href="item-details.html"><img src="assets/images/items-tab/item-8.jpg" alt="#"></a>
                                    <i class=" cross-badge lni lni-bolt"></i>
                                    <span class="flat-badge sale">Sale</span>
                                </div>
                                <div class="content">
                                    <a href="javascript:void(0)" class="tag">Mobile</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Samsung Glalaxy S8</a>
                                    </h3>
                                    <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                            </i>Delaware, USA</a></p>
                                    <ul class="info">
                                        <li class="price">$299.00</li>
                                        <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Pagination -->
                            <div class="pagination left">
                                <ul class="pagination-list">
                                    <li><a href="javascript:void(0)">1</a></li>
                                    <li class="active"><a href="javascript:void(0)">2</a></li>
                                    <li><a href="javascript:void(0)">3</a></li>
                                    <li><a href="javascript:void(0)">4</a></li>
                                    <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                </ul>
                            </div>
                            <!--/ End Pagination -->
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-list" role="tabpanel" aria-labelledby="nav-list-tab">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-7 col-12">
                                        <div class="image">
                                            <a href="item-details.html"><img src="assets/images/items-tab/item-2.jpg" alt="#"></a>
                                            <i class=" cross-badge lni lni-bolt"></i>
                                            <span class="flat-badge sale">Sale</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-5 col-12">
                                        <div class="content">
                                            <a href="javascript:void(0)" class="tag">Others</a>
                                            <h3 class="title">
                                                <a href="item-details.html">Travel Kit</a>
                                            </h3>
                                            <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                                    </i>San Francisco</a></p>
                                            <ul class="info">
                                                <li class="price">$580.00</li>
                                                <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-12 col-md-12 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-7 col-12">
                                        <div class="image">
                                            <a href="item-details.html"><img src="assets/images/items-tab/item-3.jpg" alt="#"></a>
                                            <i class=" cross-badge lni lni-bolt"></i>
                                            <span class="flat-badge sale">Sale</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-5 col-12">
                                        <div class="content">
                                            <a href="javascript:void(0)" class="tag">Electronic</a>
                                            <h3 class="title">
                                                <a href="item-details.html">Nikon DSLR Camera</a>
                                            </h3>
                                            <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                                    </i>Alaska, USA</a></p>
                                            <ul class="info">
                                                <li class="price">$560.00</li>
                                                <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-12 col-md-12 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-7 col-12">
                                        <div class="image">
                                            <a href="item-details.html"><img src="assets/images/items-tab/item-1.jpg" alt="#"></a>
                                            <i class=" cross-badge lni lni-bolt"></i>
                                            <span class="flat-badge sale">Sale</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-5 col-12">
                                        <div class="content">
                                            <a href="javascript:void(0)" class="tag">Mobile</a>
                                            <h3 class="title">
                                                <a href="item-details.html">Apple Iphone X</a>
                                            </h3>
                                            <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                                    </i>Boston</a></p>
                                            <ul class="info">
                                                <li class="price">$890.00</li>
                                                <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-12 col-md-12 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-7 col-12">
                                        <div class="image">
                                            <a href="item-details.html"><img src="assets/images/items-tab/item-4.jpg" alt="#"></a>
                                            <i class=" cross-badge lni lni-bolt"></i>
                                            <span class="flat-badge sale">Sale</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-5 col-12">
                                        <div class="content">
                                            <a href="javascript:void(0)" class="tag">Furniture</a>
                                            <h3 class="title">
                                                <a href="item-details.html">Poster Paint</a>
                                            </h3>
                                            <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                                    </i>Las Vegas</a></p>
                                            <ul class="info">
                                                <li class="price">$85.00</li>
                                                <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                        <div class="col-lg-12 col-md-12 col-12">
                            <!-- Start Single Item -->
                            <div class="single-item-grid">
                                <div class="row align-items-center">
                                    <div class="col-lg-5 col-md-7 col-12">
                                        <div class="image">
                                            <a href="item-details.html"><img src="assets/images/items-tab/item-6.jpg" alt="#"></a>
                                            <i class=" cross-badge lni lni-bolt"></i>
                                            <span class="flat-badge rent">Rent</span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 col-md-5 col-12">
                                        <div class="content">
                                            <a href="javascript:void(0)" class="tag">Books &amp; Magazine</a>
                                            <h3 class="title">
                                                <a href="item-details.html">Story Book</a>
                                            </h3>
                                            <p class="location"><a href="javascript:void(0)"><i class="lni lni-map-marker">
                                                    </i>New York, USA</a></p>
                                            <ul class="info">
                                                <li class="price">$120.00</li>
                                                <li class="like"><a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Pagination -->
                            <div class="pagination left">
                                <ul class="pagination-list">
                                    <li><a href="javascript:void(0)">1</a></li>
                                    <li class="active"><a href="javascript:void(0)">2</a></li>
                                    <li><a href="javascript:void(0)">3</a></li>
                                    <li><a href="javascript:void(0)">4</a></li>
                                    <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                </ul>
                            </div>
                            <!--/ End Pagination -->
                        </div>
                    </div>
                </div>
            </div>
			
	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
</body>

</html>