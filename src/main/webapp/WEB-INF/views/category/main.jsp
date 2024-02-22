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
	<div class="items-grid section">
		<div class="container mx-5">
			<div class="row">
				<!-- Sidebar -->
				<nav id="sidebar"
					class="col-lg-2 col-md-4 col-12 py-3 bg-white sidebar"
					style="border-radius: 10px">
					<div class="user-image mb-3">
						<table class="mx-auto text-center" style="width: 90%">
							<tr>
								<td rowspan="3" style="text-align: left;"><img
									src="/resources/assets/images/Yuree.jpg" alt="#" class="m-1"
									style="width: 85%; height: 90%; border-radius: 10px"></td>
								<td rowspan="2" colspan="2">Steve Aldridge</td>
							</tr>
							<tr>

							</tr>
							<tr>
								<td colspan="2"><span><a href="javascript:void(0)">@username</a></span></td>
							</tr>
						</table>
					</div>
					<div class="dashboard-menu mx-auto text-left">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								href="profile-settings.html"><i class="lni lni-pencil-alt"></i>
									회원 정보 수정</a></li>
							<li class="nav-item"><a class="nav-link" href="/moim/list"><i
									class="lni lni-bolt-alt"></i> 내 모임리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="favourite-items.html"><i class="lni lni-heart"></i> 찜
									모임 리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="messages.html"><i class="lni lni-envelope"></i> 1:1 채팅</a></li>
							<li class="nav-item"><a class="nav-link" href="/qna/list"><i
									class="lni lni-circle-plus"></i> 문의게시판</a></li>
							<li class="nav-item"><a class="nav-link" href="/notice/list"><i
									class="lni lni-bookmark"></i> 공지게시판</a></li>
							<li class="nav-item"><a class="nav-link"
								href="delete-account.html"><i class="lni lni-trash"></i> 구독
									결제 하기</a></li>
						</ul>
						<div class="text-center">
							<button class="btn btn-danger mt-5" href="javascript:void(0)">회원탈퇴</button>
						</div>
					</div>
				</nav>
				<div class="col-lg-1 col-md-1"></div>
				<!-- Main content -->
				<div class="col-lg-9 col-md-7 col-12 bg-white"
					style="border-radius: 10px">
					<div class="row">
						<div></div>
						<!-- 안에 내용 수정해서 사용하세요 -->
						<div class="col-12">
							<h3>Category</h3>
						</div>
						<div class="col-12">
							<div class="container mb-4 mt-4" name="categorySelect">
								<ul
									class="nav nav-pills list-group-horizontal d-flex justify-content-center"
									name="categorySelect">
									<li class="nav-item px-2"><a
										class="nav-link active BOARDCATEGORY" href="#"
										data-category="all">전체</a></li>
									<li class="nav-item px-2" name="category0" id="category0">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category0">인문학/책/글</a></li>
									<li class="nav-item px-2" name="category1" id="category1">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category1">운동/스포츠</a></li>
									<li class="nav-item px-2" name="category2" id="category2">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category2">외국/언어</a></li>
									<li class="nav-item px-2" name="category3" id="category3">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category3">음악/악기</a></li>
									<li class="nav-item px-2" name="category4" id="category4">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category4">댄스/무용</a></li>
									<li class="nav-item px-2" name="category5" id="category5">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category5">사교/인맥</a></li>
									<li class="nav-item px-2" name="category6" id="category6">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category6">사진/영상</a></li>
									<li class="nav-item px-2" name="category7" id="category7">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category7">게임/오락</a></li>
									<li class="nav-item px-2" name="category8" id="category8">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category8">반려동물</a></li>
									<li class="nav-item px-2" name="category9" id="category9">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category9">아웃도어/여행</a></li>
									<li class="nav-item px-2" name="category10" id="category10">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category10">공예/만들기</a></li>
									<li class="nav-item px-2" name="category11" id="category11">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category11">업종/직무</a></li>
									<li class="nav-item px-2" name="category12" id="category12">
									<a class="nav-link BOARDCATEGORY" href="#" data-category="category12">자유주제</a></li>
								</ul>
							</div>
						</div>
					<div class="col-lg-4 col-md-6 col-12">
						<!-- Start Single Grid -->
						<div class="categoryList">
						<div class="single-grid wow fadeInUp" data-wow-delay=".2s">
							<div class="image">
								<a href="item-details.html" class="thumbnail"><img
									src="/resources/image/payment/product.png" alt="#"></a>
								<div class="author">
									<div class="author-image">
										<a href="javascript:void(0)"><img
											src="/resources/image/payment/product.png"
											alt="#"> <span>닉네임</span></a>
									</div>
								</div>
								<p class="item-position">
									<i class="lni lni-bolt"></i>지금 뜨고있는 모임
								</p>
							</div>
							<div class="content">
								<div class="top-content">
									<a href="javascript:void(0)" class="tag">지역</a>
									<h3 class="title">
										<a href="item-details.html">모임이름</a>
									</h3>
									<p class="update-time">모임목표</p>
							
									<ul class="info-list">
										<li><a href="javascript:void(0)"><i
												class="lni lni-map-marker"></i>모임지역</a></li>
										<li><a href="javascript:void(0)"><i
												class="lni lni-timer"></i>개설일</a></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- End Single Grid -->
					</div>					
			
					</div>
					</div>
					<!-- Main content goes here -->
				</div>
			</div>
			<!--  -->
			
			
			<!--  -->
		</div>
	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<script src="/resources/js/category/category.js"></script>
	<c:import url="../temps/footer.jsp"></c:import>
</body>

</html>