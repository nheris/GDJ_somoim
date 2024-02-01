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

<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
	<!-- 내비게이터 import -->
	<c:import url="../temps/header.jsp"></c:import>
	
	<br><br><br><br><br><br>

	<div class="spinner-border" role="status">
	  <span class="visually-hidden">Loading...</span>
	</div>
	
	<c:forEach items="${list}" var="dto">
		<div class="card mx-5">
		  <h5 class="card-header">${dto.moimName}</h5>
		  <div class="card-body">
		    <h5 class="card-title">Special title treatment</h5>
		    <p class="card-text">모임장 ${dto.moimHead}</p>
		    <a href="#" class="btn btn-primary">Go somewhere</a>
		    
		    
		    <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="assets/images/my-items/my-item1.png" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">Brand New Iphone 11 Pro Max</a></h3>
                                                    <span class="price">$800</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
		    
		    
		    
		  </div>
		</div>
	</c:forEach>


	<div class="col-lg-9 col-md-12 col-12">
		<!-- Start Items Area -->
		<div class="my-items">
			<!-- th -->
			<div class="item-list-title">
				<div class="row align-items-center">
					<div class="col-lg-5 col-md-5 col-12">
						<p>Job Title</p>
					</div>
					<div class="col-lg-2 col-md-2 col-12">
						<p>Category</p>
					</div>
					<div class="col-lg-2 col-md-2 col-12">
						<p>Condition</p>
					</div>
					<div class="col-lg-3 col-md-3 col-12 align-right">
						<p>Action</p>
					</div>
				</div>
			</div>
			

			<!-- 페이징 -->
			<div class="pagination left">
				<ul class="pagination-list">
					<li><a href="javascript:void(0)">1</a></li>
					<li class="active"><a href="javascript:void(0)">2</a></li>
					<li><a href="javascript:void(0)">3</a></li>
					<li><a href="javascript:void(0)">4</a></li>
					<li><a href="javascript:void(0)"><i
							class="lni lni-chevron-right"></i></a></li>
				</ul>
			</div>

		</div>
		<!-- End Items Area -->
	</div>


<!--  --><!--  --><!--  --><!--  --><!--  -->


	<section class="dashboard section">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12 col-12">
                    <!-- Start Dashboard Sidebar -->
                    <div class="dashboard-sidebar">
                        <div class="user-image">
                            <img src="assets/images/dashboard/user-image.jpg" alt="#">
                            <h3>Steve Aldridge
                                <span><a href="javascript:void(0)">@username</a></span>
                            </h3>
                        </div>
                        <div class="dashboard-menu">
                            <ul>
                                <li><a href="dashboard.html"><i class="lni lni-dashboard"></i> Dashboard</a></li>
                                <li><a href="profile-settings.html"><i class="lni lni-pencil-alt"></i> Edit Profile</a>
                                </li>
                                <li><a class="active" href="my-items.html"><i class="lni lni-bolt-alt"></i> My Ads</a>
                                </li>
                                <li><a href="favourite-items.html"><i class="lni lni-heart"></i> Favourite ads</a></li>
                                <li><a href="post-item.html"><i class="lni lni-circle-plus"></i> Post An Ad</a></li>
                                <li><a href="bookmarked-items.html"><i class="lni lni-bookmark"></i> Bookmarked</a></li>
                                <li><a href="messages.html"><i class="lni lni-envelope"></i> Messages</a></li>
                                <li><a href="delete-account.html"><i class="lni lni-trash"></i> Close account</a></li>
                                <li><a href="invoice.html"><i class="lni lni-printer"></i> Invoice</a></li>
                            </ul>
                            <div class="button">
                                <a class="btn" href="javascript:void(0)">Logout</a>
                            </div>
                        </div>
                    </div>
                    <!-- Start Dashboard Sidebar -->
                </div>
                <div class="col-lg-9 col-md-12 col-12">
                    <div class="main-content">
                        <div class="dashboard-block mt-0">
                            <h3 class="block-title">My Ads</h3>
                            <nav class="list-nav">
                                <ul>
                                    <li class="active"><a href="javascript:void(0)">All Ads <span>42</span></a></li>
                                    <li><a href="javascript:void(0)">Published <span>88</span></a></li>
                                    <li><a href="javascript:void(0)">Featured <span>12</span></a></li>
                                    <li><a href="javascript:void(0)">Sold <span>02</span></a></li>
                                    <li><a href="javascript:void(0)">Active <span>45</span></a></li>
                                    <li><a href="javascript:void(0)">Expired <span>55</span></a></li>
                                </ul>
                            </nav>
                            <!-- Start Items Area -->
                            <div class="my-items">
                                <!-- Start Item List Title -->
                                <div class="item-list-title">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <p>Job Title</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Category</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Condition</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <p>Action</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End List Title -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="assets/images/my-items/my-item1.png" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">Brand New Iphone 11 Pro Max</a></h3>
                                                    <span class="price">$800</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="assets/images/my-items/my-item2.png" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">New Ferrari F80 Car</a></h3>
                                                    <span class="price">$13000</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Car</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Vehicle</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="assets/images/my-items/my-item3.png" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">Rick Morton- Magicius Chase</a></h3>
                                                    <span class="price">$500</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
                                <!-- Start Single List -->
                                <div class="single-item-list">
                                    <div class="row align-items-center">
                                        <div class="col-lg-5 col-md-5 col-12">
                                            <div class="item-image">
                                                <img src="assets/images/my-items/my-item4.png" alt="#">
                                                <div class="content">
                                                    <h3 class="title"><a href="javascript:void(0)">HP Laptop 6560b core i7</a></h3>
                                                    <span class="price">$750</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>Electronic</p>
                                        </div>
                                        <div class="col-lg-2 col-md-2 col-12">
                                            <p>New</p>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-12 align-right">
                                            <ul class="action-btn">
                                                <li><a href="javascript:void(0)"><i class="lni lni-pencil"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-eye"></i></a></li>
                                                <li><a href="javascript:void(0)"><i class="lni lni-trash"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single List -->
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
                            <!-- End Items Area -->
                        </div>
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
	<c:import url="../temps/footer.jsp"></c:import>
	
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>

</html>