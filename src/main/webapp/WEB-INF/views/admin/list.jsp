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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
								<td rowspan="3" style="text-align: left"><img
									src="/resources/assets/images/Yuree.jpg" alt="#" class="m-1"
									style="width: 85%; height: 90%; border-radius: 10px;" /></td>
								<td rowspan="2" colspan="2">Steve Aldridge</td>
							</tr>
							<tr></tr>
							<tr>
								<td colspan="2"><span><a href="javascript:void(0)">@username</a></span>
								</td>
							</tr>
						</table>
					</div>
					<div class="dashboard-menu mx-auto text-left">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								href="/mypage/main"><i class="lni lni-pencil-alt"></i> 회원 정보
									수정</a></li>
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
							<li class="nav-item"><a class="nav-link" href="/mypage/pay"><i
									class="lni lni-trash"></i> 구독 결제 하기</a></li>
							<li class="nav-item"><a class="nav-link" href="/admin/add">추천모임만들기</a></li>
						</ul>
					</div>
				</nav>
				<div class="col-lg-1 col-md-1"></div>
				<!-- Main content -->
				<div class="col-lg-9 col-md-7 col-12 bg-white"
					style="border-radius: 10px">
					<div class="row">
						<div></div>
						<!-- 안에 내용 수정해서 사용하세요 -->
						<div class="col-12 text-center">
							<h3>관리자 페이지</h3>
						</div>


						<!--All User List  -->
						<div>
							<table class="table">
								<tr class="something">
									<th>이름</th>
									<th>닉네임</th>
									<th>주소</th>
									<th>휴대폰번호</th>
									<th>이메일</th>
									<th>권한번호</th>
								</tr>
								<c:forEach items="${list}" var="data">
									<tr>
										<td>${data.name}</td>
										<td>${data.nickName}</td>
										<td>${data.address}</td>
										<td>${data.phone}</td>
										<td>${data.email}</td>
										<td>${data.roleDTO.roleNum}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
						
						<!--  -->
						<div class="col-12">
							<div id="categoryList" class="categoryList row"></div>
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
	<c:import url="../temps/footer.jsp"></c:import>
</body>
</html>
