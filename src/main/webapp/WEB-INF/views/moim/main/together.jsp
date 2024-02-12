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
						<li class="nav-item"><a class="nav-link" href="./home"
							style="color: white">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./board"
							style="color: white;">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="./together"
							style="color: white; font-weight: bold;">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	

    <section class="items-grid section custom-padding">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-title">
                        <h2 class="wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">Latest Products</h2>
                        <p class="wow fadeInUp" data-wow-delay=".6s" style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">There are many variations of passages of Lorem
                            Ipsum available, but the majority have suffered alteration in some form.</p>
                    </div>
                </div>
            </div>
            <div class="single-head">
                <div class="row">
                    <!-- Start Single Grid -->
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single-grid wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                            <div class="image">
                                <a href="item-details.html" class="thumbnail"><img src="assets/images/items-grid/img1.jpg" alt="#"></a>
                                <div class="author">
                                    <div class="author-image">
                                        <a href="javascript:void(0)"><img src="assets/images/items-grid/author-1.jpg" alt="#">
                                            <span>Smith jeko</span></a>
                                    </div>
                                    <p class="sale">For Sale</p>
                                </div>
                                <p class="item-position"><i class="lni lni-bolt"></i> Featured</p>
                            </div>
                            <div class="content">
                                <div class="top-content">
                                    <a href="javascript:void(0)" class="tag">Mobile Phones</a>
                                    <h3 class="title">
                                        <a href="item-details.html">Apple Iphone X</a>
                                    </h3>
                                    <p class="update-time">Last Updated: 1 hours ago</p>
                                    <ul class="rating">
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><i class="lni lni-star-filled"></i></li>
                                        <li><a href="javascript:void(0)">(35)</a></li>
                                    </ul>
                                    <ul class="info-list">
                                        <li><a href="javascript:void(0)"><i class="lni lni-map-marker"></i> New York, US</a></li>
                                        <li><a href="javascript:void(0)"><i class="lni lni-timer"></i> Feb 18, 2023</a></li>
                                    </ul>
                                </div>
                                <div class="bottom-content">
                                    <p class="price">Start From: <span>$200.00</span></p>
                                    <a href="javascript:void(0)" class="like"><i class="lni lni-heart"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Grid -->

                    
                </div>
            </div>
        </div>
    </section>



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
	<c:import url="../../temps/footer.jsp"></c:import>
</body>

</html>