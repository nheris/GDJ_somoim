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
				<c:import url="./mypage_nav.jsp"></c:import>
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
					<c:if test="${appmember eq null}">
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
					</c:if>
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