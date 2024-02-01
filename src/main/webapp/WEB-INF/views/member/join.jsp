<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- start Registration section -->
    <section class="login registration section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
                    <div class="form-head">
                        <h4 class="title">Registration</h4>
                        <form action="./join" method="post" enctype="multipart/form-data">
                            <div class="socila-login">
                                <ul>
                                    <li><a href="javascript:void(0)" class="facebook"><i class="lni lni-facebook-original"></i>Import
                                            From Facebook</a></li>
                                    <li><a href="javascript:void(0)" class="google"><i class="lni lni-google"></i>Import From Google
                                            Plus</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="alt-option">
                                <span>Or</span>
                            </div>
                            <div class="form-group">
                                <label>아이디</label>
                                <input name="userName" type="text">
                            </div>
                            <div class="form-group">
                                <label>피밀번호</label>
                                <input name="password" type="password">
                            </div>
                            <div class="form-group">
                                <label>비밀번호 확인</label>
                                <input name="password" type="password">
                            </div>
                            <div class="form-group">
                                <label>별명</label>
                                <input name="nickName" type="text">
                            </div>
                            <div class="form-group">
                                <label>이름</label>
                                <input name="name" type="text">
                            </div>
                            <div class="form-group">
                                <label>주민번호</label>
                                <input name="name" type="text">
                            </div>
                            <div class="form-group">
                                <label>주소</label>
                                <input name="address" type="text">
                            </div>
                            <div class="form-group">
                                <label>전화번호</label>
                                <input name="phone" type="text">
                            </div>
                            <div class="form-group">
                                <label>이메일</label>
                                <input name="email" type="email">
                            </div>
                            <div class="form-group">
                                <label>사진첨부</label>
                                <input name="attachs" type="file">
                            </div>







                            <div class="check-and-pass">
                                <div class="row align-items-center">
                                    <div class="col-12">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input width-auto"
                                                id="exampleCheck1">
                                            <label class="form-check-label">Agree to our <a href="javascript:void(0)">Terms and
                                                    Conditions</a></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="button">
                                <button type="submit" class="btn">Registration</button>
                            </div>
                            <p class="outer-link">Already have an account? <a href="login.html"> Login Now</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>