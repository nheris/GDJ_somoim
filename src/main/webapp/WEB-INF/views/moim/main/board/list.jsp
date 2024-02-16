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
						<h1 class="page-title">${dto.moimName}</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link" href="../home?moimNum=${moimDTO.moimNum}"
							style="color: white">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./list?moimNum=${moimDTO.moimNum}"
							style="color: white; font-weight: bold;">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="../together?moimNum=${moimDTO.moimNum}"
							style="color: white">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 본문 -->
	<div class="items-details section pt-2">
            <!-- 가림 -->
            <div class="category-grid-topbar">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6 col-12">
                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-grid-tab" data-bs-toggle="tab" data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid" aria-selected="true"><i class="lni lni-list"></i></button>
                                <!-- <button class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false"><i class="lni lni-bookmark"></i>&nbsp;공지</button> -->
                            </div>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-grid" role="tabpanel" aria-labelledby="nav-grid-tab">
                	<!-- 서치 -->
                    <div class="mt-5">
						<form class="row g-3" action="./list">
						  <div class="col-auto">
							  <select name="kind" class="form-select" aria-label="Default select example">
								  <option class="a" value="kind1">제목</option>
								  <option class="a" value="kind2">내용</option>
								  <option class="a" value="kind3">작성자</option>
								  <option class="a" value="kind4">제목+내용+작성자</option>
							</select>
						  </div>		
						
						  <div class="col-auto">
						    <label for="search" class="visually-hidden"></label>
						    <input type="text" name="search" class="form-control" id="search">
						  </div>
						  <div class="col-auto">
						    <button type="submit" class="btn btn-primary mb-3"><i class="lni lni-search-alt theme-color"></i></button>
						  </div>
						</form>
					</div>
                    
                    <!-- 자유게시판 -->
					<table class="table">
						<thead class="text-center">
						  <tr>
							<th scope="col">No.</th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">작성일</th>
							<th scope="col">조회</th>
							<th scope="col">좋아요</th>
						  </tr>
						</thead>
						<tbody class="table-group-divider" id="listTbody">
							<c:forEach items="${list}" var="dto">
								<tr>
									<th class="col-md-1 text-center" scope="row">${dto.boardNum}</th>
									<td class="col-md-5 ps-5">${dto.boardTitle}</td>
									<td class="col-md-2 text-center">${dto.boardWriter}</td>
									<td class="col-md-2 text-center">${dto.boardDate}</td>
									<td class="col-md-1 text-center">${dto.boardClick}</td>
									<td class="col-md-1 text-center"> ${dto.boardLike}</td>
								  </tr>
							</c:forEach>

						</tbody>
					  </table>


					<!-- 글쓰기 -->
                    <div class="row">
	                    <div class="button">
							<a href="./add?moimNum=${moimDTO.moimNum}" class="btn my-3" id="addBtn">글쓰기</a>
						</div>
                    </div>
                    
                    <!-- 페이징 -->
                    <div class="row">
                        <div class="col-12">
                            <!-- Pagination -->
                            <div class="pagination left text-center">
                                <ul class="pagination-list">
									<c:if test="${!pager.start}">
										<li><a href="./list?page=${pager.startNum-1}"><i class="lni lni-chevron-left"></i></a></li>
									</c:if>
									<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                    	<li class="active"><a href="./list?page=${i}">${i}</a></li>
									</c:forEach>
									<c:if test="${!pager.last}">
                                    	<li><a href="./list?page=${pager.lastNum+1}"><i class="lni lni-chevron-right"></i></a></li>
									</c:if>
                                </ul>
                            </div>
                            <!--/ End Pagination -->
                        </div>
                    </div>


				</div>
                
                
                <!-- <div class="tab-pane fade" id="nav-list" role="tabpanel" aria-labelledby="nav-list-tab">
                    <게시판>
                    <div class="row ">
                        

                    </div>
                    
                    <글쓰기>
                    <div class="row">
	                    <div class="button">
							<a href="./add?moimNum=${moimDTO.moimNum}" class="btn my-3" id="addBtn">글쓰기</a>
						</div>
                    </div>
					
                    <페이징>
                    <div class="row text-">
                        <div class="col-12">
                            
                            <div class="pagination text-center">
                                <ul class="pagination-list">
                                    <li><a href="javascript:void(0)">1</a></li>
                                    <li class="active"><a href="javascript:void(0)">2</a></li>
                                    <li><a href="javascript:void(0)">3</a></li>
                                    <li><a href="javascript:void(0)">4</a></li>
                                    <li><a href="javascript:void(0)"><i class="lni lni-chevron-right"></i></a></li>
                                </ul>
                            </div>
                            
                        </div>
                    </div>
                    
                    
                </div> -->
            </div>
			
	</div>



	<!-- 댓글 임시 -->
	<div class="items-details section">
		<div class="container mx-5">
				
					<!-- Comments -->
					<div class="post-comments">
						<h3 class="comment-title"><span>3 comments on this post</span></h3>
						<ul class="comments-list">
							<li>
								<div class="comment-img">
									<img src="assets/images/blog/comment1.jpg" class="rounded-circle" alt="img">
								</div>
								<div class="comment-desc">
									<div class="desc-top">
										<h6>Arista Williamson</h6>
										<span class="date">19th May 2023</span>
										<a href="javascript:void(0)" class="reply-link"><i class="lni lni-reply"></i>Reply</a>
									</div>
									<p>
										Donec aliquam ex ut odio dictum, ut consequat leo interdum. Aenean nunc
										ipsum, blandit eu enim sed, facilisis convallis orci. Etiam commodo
										lectus
										quis vulputate tincidunt. Mauris tristique velit eu magna maximus
										condimentum.
									</p>
								</div>
							</li>
							<li class="children">
								<div class="comment-img">
									<img src="assets/images/blog/comment2.jpg" class="rounded-circle" alt="img">
								</div>
								<div class="comment-desc">
									<div class="desc-top">
										<h6>Rosalina Kelian <span class="saved"><i class="lni lni-bookmark"></i></span></h6>
										<span class="date">15th May 2023</span>
										<a href="javascript:void(0)" class="reply-link"><i class="lni lni-reply"></i>Reply</a>
									</div>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim.
									</p>
								</div>
							</li>
							<li>
								<div class="comment-img">
									<img src="assets/images/blog/comment3.jpg" class="rounded-circle" alt="img">
								</div>
								<div class="comment-desc">
									<div class="desc-top">
										<h6>Alex Jemmi</h6>
										<span class="date">12th May 2023</span>
										<a href="javascript:void(0)" class="reply-link"><i class="lni lni-reply"></i>Reply</a>
									</div>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
										tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
										veniam.
									</p>
								</div>
							</li>
						</ul>
					</div>
					<div class="comment-form">
						<h3 class="comment-reply-title"><span>Leave a comment</span></h3>
						<form action="#" method="POST">
							<div class="row">
								<div class="col-lg-6 col-12">
									<div class="form-box form-group">
										<input type="text" name="name" class="form-control form-control-custom" placeholder="Your Name">
									</div>
								</div>
								<div class="col-lg-6 col-12">
									<div class="form-box form-group">
										<input type="email" name="email" class="form-control form-control-custom" placeholder="Your Email">
									</div>
								</div>
								<div class="col-12">
									<div class="form-box form-group">
										<textarea name="#" class="form-control form-control-custom" placeholder="Your Comments"></textarea>
									</div>
								</div>
								<div class="col-12">
									<div class="button">
										<button type="submit" class="btn">Post Comment</button>
									</div>
								</div>
							</div>
						</form>
					</div>
			   
		</div>
	
	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../../../temps/footer.jsp"></c:import>
</body>

</html>