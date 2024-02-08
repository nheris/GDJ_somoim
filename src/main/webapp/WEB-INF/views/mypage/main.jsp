<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
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
								<td rowspan="3"><img
									src="/resources/assets/images/Yuree.jpg" alt="#" class="m-1"
									style="width: 90%; height: 90%; border-radius: 10px"></td>
								<td rowspan="2" colspan="2">Steve Aldridge</td>
							</tr>
							<tr>

							</tr>
							<tr>
								<td colspan="2"><span><a href="javascript:void(0)">${member.userName}</a></span></td>
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
				<div class="col-lg-9 col-md-7 col-12 bg-white"
					style="border-radius: 10px">
					<div class="row">
						<h2 class="mb-4">Profile Settings</h2>
						
						<form id="frm" action="./update" method="post" accept-charset="UTF-8" enctype="multipart/form-data">
						<table class="table table-hover" id="del_td">
							<tr>
								<td colspan="5">
									<c:if test="${empty member.profile}">
										<img class="rounded float-left"
											src="/resources/img/profile/profile.jpg" alt="..." style="width: 80px; height: 80px;">
											
									</c:if> 
									<c:if test="${not empty member.profile.fileName}">
										<img class="rounded float-left"
											src="../resources/upload/member/${member.profile.fileName}" alt="..." style="width: 80px; height: 80px;">
											
									</c:if>
								</td>
							</tr>
							<tr id="show_profile" style="display: none;">
								<td>프로필 사진 변경</td>
								<td><input class="profile" name="attachs" type="file"></td>
							</tr>
							<tr>
								<td class="table dark">닉네임</td>
								<td class="del">${member.nickName}									
								</td>								
								<td><input type="hidden" name="nickName" value="${member.nickName}" class="show"></td>
							</tr>

							<tr>
								<td class="table dark">이름</td>
								<td>
									${member.name}
								</td>								
							</tr>

							<tr>
								<td class="table dark">주소</td>
								<td class="del">${member.address}</td>
								<td><input type="hidden" name="address" value="${member.address}" class="show"></td>
							</tr>

							<tr>
								<td class="table dark">전화번호</td>
								<td class="del">${member.phone}</td>
								<td><input type="hidden" name="phone" value="${member.phone}" class="show"></td>
							</tr>

							<tr>
								<td class="table dark">이메일</td>
								<td class="del">${member.email}</td>
								<td><input type="hidden" name="email" value="${member.email}" class="show"></td>
							</tr>

						</table>
					</form>
					<span>
						<button id="btn1" class="btn btn-hover">수정하기</button>
						<button id="btn2" hidden class="btn btn-hover">수정완료</button>
					</span>
					<br><br><br><br>
					<h2>비밀번호 변경</h2>
					<form id="frm2" action="./password" method="post">
						<table class="table table-hover" id="del_td">
							<tr>
								<td class="table dark">비밀번호</td>
								<td><input type="password" name="password" id = "password"></td>
							</tr>
							<tr>
								<td class="table dark">비밀번호변경</td>
								<td><input type="password" id = "passwordCheck"></td>
							</tr>
							
						</table>
					</form>
					<button id="btn3">비밀번호 수정</button>
				</div>
					
					
					
					
					
					

					<!-- Main content goes here -->
				</div>
				
			</div>
		</div>
	</div>
	<div>
	</div>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
	<script src="../resources/js/mypage/main.js"></script>
</body>

</html>