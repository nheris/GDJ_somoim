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
<c:import url="../../../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../../../temps/header.jsp"></c:import>
</head>
<body>
	<!-- 모임 홈 헤더 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title"></h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link" href="../home?moimNum=${dto.moimNum}"
							style="color: white">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./list?moimNum=${dto.moimNum}"
							style="color: white; font-weight: bold;">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="../together?moimNum=${dto.moimNum}"
							style="color: white">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>




	<!-- 댓글 임시 -->
	<div class="items-details section py-5">
		<div class="container mx-5">
				<!-- 테두리 -->
				<div class="post-comments mt-2">
					
					
					<h3>${dto.boardTitle}</h3>
					<!-- 작성자 정보 -->
					<div class="author my-3">
						<div class="author-profile">
								<img src="/resources/upload/member/${dto.boardProfile}" alt="2" style="width: 40px; height: 40px; border-radius: 100px; float: left;">
								<div class="mx-2" style=" display:inline-block;">
									<div class="mx-2">${dto.boardWriter}</div>
									<div class="mx-2">${dto.boardDate}</div>
								</div>
					
						</div>
					</div>
					<h3 class="comment-title my-3"></h3>

					<!-- 본문 -->
					<div class="contents">
						<!-- 글사진 -->
						<c:if test="${not empty dto.fileDTOs}">
							<div id="carouselExample" class="carousel slide">
								<div class="carousel-inner">
									<div class="carousel-item active">
									<img src="/resources/upload/moimBoard/${dto.fileDTOs[0].fileName}" class="d-block w-100" alt="...">
									</div>
									<c:forEach var="i" items="${dto.fileDTOs}" varStatus="j">
										<c:if test="${j.index ne '0'}">
											<div class="carousel-item ">
											<img src="/resources/upload/moimBoard/${i.fileName}" class="d-block w-100" alt="...">
											</div>
										</c:if>
										<<%-- div>${j.index}</div> --%>
										
									</c:forEach>

									
								</div>
								<button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>
						</c:if>

						<!-- 글 내용 -->
						<div class="text mt-5" style="color:black;">
							${dto.boardText}
						</div>
					</div>
					
					
					<h3 class="comment-title my-5"><span>댓글</span></h3>
					
					<!-- 댓글 -->
					<div class="author my-3" id="replyList" data-user="${member.userName}">
						<c:forEach items="${list}" var="dto">
							<c:if test="${dto.userName eq member.userName}">
							    <div style="text-align: right;">
							        <a href="javascript:void(0)" class="up" data-reply-num="${dto.replyNum}"><i class="lni lni-pencil update"></i></a>
							        <a href="javascript:void(0)" class="del" data-reply-num="${dto.replyNum}"><i class="lni lni-trash del"></i></a>
							        <a href="javascript:void(0)" class="re" data-reply-num="${dto.replyNum}"><i class="lni lni-reply"></i></a>
							    </div>
							</c:if>
							
							<div class="author-profile">
							    <img src="/resources/img/profile/profile.jpg" alt="3" style="width: 36px; height: 36px; border-radius: 100px;">
							    <span class="mx-2">${dto.replyWriter}&ensp;·&ensp;${dto.replyDate}</span>
							</div>
							<div class="ms-5">
							    ${dto.replyText}
							</div>
							<h3 class="comment-title my-3"></h3>
						</c:forEach>
					</div>
					
					<!-- 댓 페이징 -->
					<div class="col-auto text-center">
				    	<button id="more" data-replyList-page="1" data-replyList-totalPage="1" class="btn btn-light btn-sm">더보기</button>
				    </div>
					
					<!-- 댓글 작성폼 -->
					<div class="comment-form">
						<h3 class="comment-reply-title"><span>Leave a comment</span></h3>
						<form id="replyForm" method="POST">
							<div class="row">
								<input type="hidden" name="boardNum" value="${dto.boardNum}">
								
								<div class="col-12">
									<div class="form-box form-group">
										<textarea id="replyText" name="replyText" class="form-control form-control-custom" placeholder="댓글을 남겨보세요."></textarea>
									</div>
								</div>
								
								<div class="col-12">
									<div class="button">
										<button type="button" id="replyAdd" class="btn">Post Comment</button>
									</div>
								</div>
								
							</div>
						</form>
					</div>
					
				</div>
				<!-- 글 버튼 -->
				<c:if test="${dto.userName eq member.userName}">
				    <div class="mt-4" style="text-align: right;">
						<button type="button" class="btn btn-outline-dark" id="update">Update</button>
						<button type="button" class="btn btn-outline-dark" id="delBtn">Delete</button>
					</div>
				</c:if>
				<form id="frm" action="./update" method="get">
                    <input type="hidden" name="boardNum" value="${dto.boardNum}">
                    <input type="hidden" name="moimNum" value="${dto.moimNum}">
                </form>
		</div>
	
	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../../../temps/footer.jsp"></c:import>
	<script src="/resources/js/moim/moimboard.js"></script>
</body>

</html>