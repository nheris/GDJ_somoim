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
				<div class="col-lg-9 col-md-7 col-12">
					<div class="row main-content" style="height: 100%;">
						<!-- 안에 내용 수정해서 사용하세요 -->
						
						<!-- 타이틀 -->
						<div class="col-12 mx-3 bg-white" style="border-radius: 10px; width: 99%">
							<div class="section-title" style="margin-bottom: 40px">
		                        <h2 class="wow fadeInUp" data-wow-delay=".4s" style="font-size: 22px; padding-bottom: 10px; margin-top: 20px; margin-bottom: 8px; height: 45px">모임 개설</h2>
		                        <p class="wow fadeInUp" data-wow-delay=".6s" style="font-size: 12px;">모임을 만들어 보세요!</p>
		                     </div>
		                     
		                <!-- 폼 -->  
		                     
		                     <div class="dropdown">
							  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
							    Dropdown button
							  </button>
							  <ul class="dropdown-menu">
							    <li><a class="dropdown-item" href="#">Action</a></li>
							    <li><a class="dropdown-item" href="#">Another action</a></li>
							    <li><a class="dropdown-item" href="#">Something else here</a></li>
							  </ul>
							</div>
							
							
							<div class="dropdown">
  <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
    Dropdown link
  </a>

  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">Action</a></li>
    <li><a class="dropdown-item" href="#">Another action</a></li>
    <li><a class="dropdown-item" href="#">Something else here</a></li>
  </ul>
</div>

<ul class="dropdown-menu">
  <li><span class="dropdown-item-text">Dropdown item text</span></li>
  <li><a class="dropdown-item" href="#">Action</a></li>
  <li><a class="dropdown-item" href="#">Another action</a></li>
  <li><a class="dropdown-item" href="#">Something else here</a></li>
</ul>






		                     <img src="/resources/assets/images/categories/jobs.svg" alt="#">
		                     
		                     
		                     
		                     
							<div class="col-6">
								<div class="mb-3">
									<label for="exampleFormControlInput1" class="form-label">Email
										address</label> <input type="email" class="form-control"
										id="exampleFormControlInput1" placeholder="name@example.com">
								</div>
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">Example
										textarea</label>
									<textarea class="form-control" id="exampleFormControlTextarea1"
										rows="3"></textarea>
								</div>
							</div>
			                     
			                     
							<div class="vstack gap-2 col-md-5 mx-auto">
								<button type="button" class="btn btn-secondary">Save
									changes</button>
								<button type="button" class="btn btn-outline-secondary">Cancel</button>
							</div>
		                     
						</div>
			







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
</body>

</html>