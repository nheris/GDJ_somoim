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
<!-- 카테고리 -->
<link rel=stylesheet href="https://unpkg.com/bootstrap-select@1.13.8/dist/css/bootstrap-select.css" />
<style> body { margin: 1rem; background-color: dimgray; } </style>
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
							<li class="nav-item"><a class="nav-link"
								href="my-items.html"><i class="lni lni-bolt-alt"></i> 내
									모임리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="favourite-items.html"><i class="lni lni-heart"></i> 찜
									모임 리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="messages.html"><i class="lni lni-envelope"></i> 1:1 채팅</a></li>
							<li class="nav-item"><a class="nav-link"
								href="post-item.html"><i class="lni lni-circle-plus"></i>
									문의게시판</a></li>
							<li class="nav-item"><a class="nav-link"
								href="bookmarked-items.html"><i class="lni lni-bookmark"></i>
									공지게시판</a></li>
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
				<div class="col-lg-9 col-md-7 col-12 bg-white" style="border-radius: 10px">
					<div class="row">
						<!-- 안에 내용 수정해서 사용하세요 -->
						<div class="col-6"></div>
						
						<!-- 타이틀 -->
						<div class="col-12 mx-3 bg-white" style="border-radius: 10px; width: 99%">
							<div class="section-title" style="margin-bottom: 40px">
								<h2 class="wow fadeInUp" data-wow-delay=".4s"
									style="font-size: 22px; padding-bottom: 10px; margin-top: 20px; margin-bottom: 8px; height: 45px">모임
									수정</h2>
								<p class="wow fadeInUp" data-wow-delay=".6s" style="font-size: 12px;">수정할 내용을 입력해주세요.</p>
							</div>
						</div>

						<!-- 폼  -->  
						<form id="addForm" action="./add" method="post" enctype="multipart/form-data">
			                <div class="col-12 mx-3 px-5 bg-white" style="border-radius: 10px; width: 99%">
			                
								<!-- 모임설정 -->
								<div class="mb-3">
									<label for="moimName" class="form-label">모임 이름</label>
									<input type="text" class="form-control" id="moimName" name="moimName" value="${dto.moimName}" placeholder="모임 이름">
								</div>
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">모임 설명</label>
									<textarea class="form-control" id="moimText" name="moimText" rows="8" placeholder="모임에 대한 설명이나 목표를 적어주세요.">${dto.moimText}</textarea>
								</div>
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">모임 대표 이미지</label>
									<div class="mb-1"><img src="/resources/upload/moim/${dto.moimFileDTO.fileName}" style="width: 100px; height: 100px; border-radius: 50px;" alt="..."></div>
									<div class="input-group mb-3">
									  <input type="file" class="form-control" name="file">
									</div>
								</div>
								<div class="mb-3">
									<label for="moimName" class="form-label">모임 정원(10~300명)</label>
									<input type="number" class="form-control" id="moimMemCount" name="moimMemCount" value="${dto.moimMemCount}">
								</div>
								
								
								<!-- 제출 -->
								<div class="button text-center">
									<button class="btn my-3" id="submitBtn" type="submit">모임 만들기</button>
								</div>
	
							</div>
						</form>
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
					<!-- Main content goes here -->
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
	
	<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.slim.min.js"></script>
	<script src="https://unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js" data-src="https://unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.min.js" ></script>
	<script src="https://unpkg.com/bootstrap-select@1.13.8/dist/js/bootstrap-select.min.js"></script>
	<script src="/resources/js/moim/moimCon.js"></script>
</body>

</html>