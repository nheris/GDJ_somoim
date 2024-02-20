<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${list}" var="dto">
    <div style="text-align: right;">
		<c:if test="${dto.userName eq member.userName}">
	        <a href="javascript:void(0)" ><i class="lni lni-pencil" data-bs-toggle="modal" data-bs-target="#exampleModal${dto.replyNum}"></i></a>
	        <!-- Modal -->
			  <div class="modal fade" id="exampleModal${dto.replyNum}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			    <div class="modal-dialog">
			      <div class="modal-content">
			        <div class="modal-header">
			          <h1 class="modal-title fs-5" id="exampleModalLabel">수정</h1>
			          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			        </div>
			        <div class="modal-body">
			          	<form method="post" id="replyUpdateForm">
	                        <textarea class="form-control" name="replyText" id="replyText${dto.replyNum}" rows="3">${dto.replyText}</textarea>
	               
                    	</form>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="replyCloseButton${dto.replyNum}">Close</button>
			          <button type="button" class="btn btn-primary up" data-reply-num="${dto.replyNum}">Update</button>
			        </div>
			      </div>
			    </div>
			  </div>
  
	        <a href="javascript:void(0)" ><i class="lni lni-trash del" data-reply-num="${dto.replyNum}"></i></a>
		</c:if>
       	<a href="javascript:void(0)" class="re" data-reply-num="${dto.replyNum}"><i class="lni lni-reply"></i></a>
    </div>
	
	<div class="author-profile">
	    <img src="/resources/img/profile/profile.jpg" alt="3" style="width: 36px; height: 36px; border-radius: 100px;">
	    <span class="mx-2">${dto.replyWriter}&ensp;·&ensp;${dto.replyDate}</span>
	</div>
	<div class="ms-5">
	    ${dto.replyText}
	</div>
	<h3 class="comment-title my-3"></h3>
</c:forEach>