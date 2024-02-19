<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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