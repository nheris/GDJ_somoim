<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
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
        <a href="#" class="scroll-top btn-hover">
            <i class="lni lni-chevron-up"></i>
        </a>

        <div class="d-grid gap-3">
            <div class="p-5"></div>
            <div class="p-3 mx-auto">
                <h3>공지게시판</h3>
            </div>
        </div>

        <div class="container">
            <div class="row row-cols-auto">
                <div class="col">
                    <select
                        class="form-select"
                        aria-label="Default select example"
                    >
                        <option selected>Open this select menu</option>
                        <option value="1">One</option>
                        <option value="2">Two</option>
                        <option value="3">Three</option>
                    </select>
                </div>
                <div class="col"></div>
                <div class="col"></div>
                <div class="col-auto ms-auto mt-2">
                    <!-- ms-auto를 추가하여 검색 입력란을 오른쪽으로 정렬합니다 -->
                    <input type="search" />
                    <button>검색</button>
                </div>
            </div>

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table>
        </div>
<div></div>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="row justify-content-center">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <c:if test="${!pager.start}">
                            <li class="page-item">
                                <a class="page-link" href="./list?page=${pager.startNum-1}&search=${pager.search}&searchFind=${pager.searchFind}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>

                        <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                            <li class="page-item"><a class="page-link" href="./list?page=${i}">${i}</a></li>
                        </c:forEach>

                        <c:if test="${!pager.last}">
                            <li class="page-item">
                                <a class="page-link" href="./list?page=${pager.lastNum+1}&search=${pager.search}&searchFind=${pager.searchFind}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>


        <!-- ========================= JS improt ========================= -->
        <c:import url="../temps/footer.jsp"></c:import>
    </body>
</html>
