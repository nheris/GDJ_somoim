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
<c:import url="../../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../../temps/header.jsp"></c:import>
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
						<li class="nav-item"><a class="nav-link" href="./home?moimNum=${dto.moimNum}"
							style="color: white; font-weight: bold;">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./board/list?moimNum=${dto.moimNum}"
							style="color: white">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="./together?moimNum=${dto.moimNum}"
							style="color: white">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<div class="items-details section">
		


				<div class="container mx-5">
						<div class="post-thumbnils">
                            <img src="/resources/upload/moim/${dto.moimFileDTO.fileName}" style="width: 80%; height: 500px;" alt="모임 대표 사진">
                            <!-- <img src="/resources/upload/moim/${dto.moimFileDTO.fileName}" style="width: 100px; height: 100px; border-radius: 50px;" alt="..."> -->
                        </div>
                        
						<div class="post-details">
                            <div class="detail-inner">
                                <h3 class="post-title">
                                    Welcome
                                </h3>
                                <!-- post meta -->
                                <p>${dto.moimText}</p>
                                <!-- post image -->
                                <div class="post-image">
                                    <div class="row align-items-center">
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <h3></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                                tempor
                                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                                quis nostrud
                                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                            </p>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <a href="javascript:void(0)">
                                                <img src="assets/images/blog/blog-inner-image.jpg" alt="#">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                    irure
                                    dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                                    pariatur.
                                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia. </p>
                                <!-- post quote -->
                                <blockquote>
                                    <div class="icon">
                                        <i class="lni lni-quotation"></i>
                                    </div>
                                    <h4>asdfasdfasdfasdfasdfasdfasdfasdfasdf</h4>
                                    <span>${dto.moimHead}</span>
                                </blockquote>
                                <h3>Setting the mood with incense</h3>
                                <p>Remove aversion, then, from all things that are not in our control, and transfer it
                                    to
                                    things contrary to the nature of what is in our control. But, for the present,
                                    totally
                                    suppress desire: for, if you desire any of the things which are not in your own
                                    control,
                                    you must necessarily be disappointed; and of those which are, and which it would be
                                    laudable to desire, nothing is yet in your possession. Use only the appropriate
                                    actions
                                    of pursuit and avoidance; and even these lightly, and with gentleness and
                                    reservation.
                                </p>
                                <ul class="list">
                                    <li><i class="lni lni-chevron-right"></i> The happiness of your life depends upon
                                        the
                                        quality of your thoughts </li>
                                    <li><i class="lni lni-chevron-right"></i> You have power over your mind, not outside
                                        events</li>
                                    <li><i class="lni lni-chevron-right"></i>The things you think about determine the
                                        quality of your mind</li>
                                </ul>

                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                    incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                                    irure
                                    dolor in reprehenderit. </p>
                                <!--post tags -->
                                <!-- Post Social Share -->
                                <div class="post-social-media">
                                    <h5 class="share-title">Social Share</h5>
                                    <ul>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <i class="lni lni-facebook-filled"></i>
                                                <span>facebook</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <i class="lni lni-twitter-original"></i>
                                                <span>twitter</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <i class="lni lni-google"></i>
                                                <span>google+</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <i class="lni lni-linkedin-original"></i>
                                                <span>linkedin</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">
                                                <i class="lni lni-pinterest"></i>
                                                <span>pinterest</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Post Social Share -->
                            </div>

                        </div>
                </div>

	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../../temps/footer.jsp"></c:import>
</body>

</html>