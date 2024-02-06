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
								<td rowspan="3"><img
									src="/resources/assets/images/Yuree.jpg" alt="#" class="m-1"
									style="width: 90%; height: 90%; border-radius: 10px"></td>
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
						<div class="button text-center">
							<button class="btn mt-5" href="javascript:void(0)">Logout</button>
						</div>
					</div>
				</nav>
				<div class="col-lg-1 col-md-1"></div>
				<!-- Main content -->
				<div class="col-lg-9 col-md-7 col-12 bg-white"
					style="border-radius: 10px">






					<div class="row">
						<!-- 안에 내용 수정해서 사용하세요 -->

						<!-- 정모채팅목록 -->
						<div class="col-lg-6 mt-4 mb-5">
							<ol class="list-group list-group-numbered">
								<button type="button" class="btn btn-light position-relative">
									<div class="ms-2 me-auto">
										<div class="fw-bold">Subheading</div>
										Content for list item
									</div>
									<span
										class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
										99+ <span class="visually-hidden">unread messages</span>
									</span>
								</button>
							</ol>
						</div>
						<div class="col-lg-6 mt-4 mb-5">
							<ol class="list-group list-group-numbered">
								<button type="button" class="btn btn-light position-relative">
									<div class="ms-2 me-auto">
										<div class="fw-bold">Subheading</div>
										Content for list item
									</div>
									<span
										class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
										99+ <span class="visually-hidden">unread messages</span>
									</span>
								</button>
							</ol>
						</div>



						<!-- 모임 리스트 -->
						<table class="table">
							<thead>
								<tr>
									<th scope="col">


										<div class="item-list-title">
											<div class="row align-items-center">
												<div class="col-lg-5 col-md-5 col-12">
													<p>Title</p>
												</div>
												<div class="col-lg-2 col-md-2 col-12">
													<p>Members</p>
												</div>
												<div class="col-lg-2 col-md-2 col-12">
													<p>Join</p>
												</div>
												<div class="col-lg-3 col-md-3 col-12 align-right">
													<p>Action</p>
												</div>
											</div>
										</div>

									</th>
								</tr>
							</thead>

							<tbody class="table-group-divider" id="listTbody">
								<c:forEach items="${list}" var="dto">
									<tr>
										<td>
											<div class="card-body">
												<div class="single-item-list">
													<div class="row align-items-center">
														<div class="col-lg-5 col-md-5 col-12">
															<div class="item-image">
																<img src="assets/images/my-items/my-item1.png" alt="#">
																<div class="content">
																	<h5 class="title">
																		<a href="./detail" id="moimname"
																			data-moim-num="${dto.moimNum}">${dto.moimName}</a>
																	</h5>
																	<span class="moimHead"> 모임장 ${dto.moimHead}</span>
																</div>
															</div>
														</div>


														<div class="col-lg-2 col-md-2 col-12">
															<p>멤버수</p>
														</div>


														<div class="col-lg-2 col-md-2 col-12">
															<p>가입일? 개설일?</p>
														</div>


														<div class="col-lg-3 col-md-3 col-12 align-right">
															<ul class="action-btn">
																<li>
																	<a href="javascript:void(0)">
																	<i class="lni lni-pencil"></i></a>
																</li>
																<li>
																	<a href="javascript:void(0)">
																	<i class="lni lni-eye"></i></a>
																</li>
																<li>
																	<a href="javascript:void(0)" id="deleteBtn${dto.moimNum}" data-moim-num="${dto.moimNum}">
																	<i class="lni lni-trash del" ></i></a>
																</li>
															</ul>
														</div>


													</div>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>

							</tbody>
						</table>




















						<!-- 모임 개설 -->
						<div class="button text-center">
							<a href="./add" class="btn my-3" id="addBtn">모임 개설하기</a>
						</div>







						<!-- 페이징 -->
						<!-- <div class="pagination left ">
							<ul class="pagination-list">
								<li><a href="javascript:void(0)">1</a></li>
								<li class="active"><a href="javascript:void(0)">2</a></li>
								<li><a href="javascript:void(0)">3</a></li>
								<li><a href="javascript:void(0)">4</a></li>
								<li><a href="javascript:void(0)"><i
										class="lni lni-chevron-right"></i></a></li>
							</ul>
						</div> -->


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
	<script src="/resources/js/moim/moimCon.js"></script>
</body>

</html>