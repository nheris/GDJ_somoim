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
</head>

<body>
	<!-- 내비게이터 import -->
	<c:import url="../temps/header.jsp"></c:import>

	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<div class="d-grid gap-3 mb-2">
		<div class="p-5"></div>
		<div class="p-3 mx-auto">
			<h3>${board}</h3>
		</div>
	</div>
	<!--  -->

	<div class="container mb-4">
		<div class="col-auto d-flex justify-content-end mb-3">
			<a href="./list" class="btn btn-outline-dark">목록</a>
		</div>
	</div>

	<!--  -->
	<div class="container">
		<div class="card overflow-hidden shadow rounded-4 border-0 mb-5">
			<div class="card-body p-0">
				<div class="d-flex align-items-center">
					<div class="p-5">
						<h2 class="fw-bolder">${detail.boardTitle}</h2>
						<div>${detail.boardText}</div>

						<div>
							<c:forEach items="${detail.fileDTOs}" var="f">
								<c:if test="${board eq '문의게시판'}">
									<a href="../resources/upload/qna/${f.fileName}">${f.oriName}</a>
								</c:if>
								<c:if test="${board eq '공지게시판'}">
									<a href="../resources/upload/notice/${f.fileName}">${f.oriName}</a>
								</c:if>

							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<%--
                <c:if test="${detail.boardWriter eq member.userName}">
                    --%>
			<a id="update" class="btn btn-outline-dark mb-3" href="#">Update</a>
			<a id="delete" class="btn btn-outline-dark mb-3" href="#">Delete</a>
			<%--
                </c:if>
                --%>
			<form id="frm" action="./update" method="get">
				<input type="hidden" name="boardNum" value="${detail.boardNum}" />
			</form>
		</div>
		<c:if test="${board eq '문의게시판'}">
			<button class="btn btn-light" id="up"data-board-num="${replyDTO.boardNum}">수정</button>
			<button class="btn btn-light" id="del">삭제</button>
			<table class="table">
				<thead>
					<tr>
						<th>Content</th>
						<th>Writer</th>
						<th>Date</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody id="replyList" data-user="${member.userName}">

				</tbody>
			</table>
			

			
			<div class="my-3">
				<form id="replyForm" >
					<input type="hidden" name="boardNum" value="${replyDTO.boardNum}">
					<input type="hidden" name="boardNum" value="${detail.boardNum}" />
						<div class="mb-3">
							<textarea class="form-control" id="boardReplyText rows="3" name="boardReplyText"></textarea>
							<div>
								<button type="button" class="btn btn-primary" id="replyAdd">댓글달기</button>
							</div>
						</div>
				</form>
		</c:if>
	</div>
	<!-- ========================= JS improt ========================= -->
		
	<script src="/resources/js/board/boardDetail.js"></script>
	<script src="/resources/js/board/reply.js"></script>

	<c:import url="../temps/footer.jsp"></c:import>
</body>
</html>
