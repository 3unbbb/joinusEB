<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$('#all').click(function(){
			$(location).attr('href','/club/boardList?club_no=${club_no}');
		});
		$('#notice').click(function(){
			$(location).attr('href','/club/boardList?club_no=${club_no}&board_type_no=3');
		});
		$('#free').click(function(){
			$(location).attr('href','/club/boardList?club_no=${club_no}&board_type_no=1');
		});
		$('#review').click(function(){
			$(location).attr('href','/club/boardList?club_no=${club_no}&board_type_no=2');
		});
	});

</script>


<!-- Feature Start -->
<div class="container-xxl py-5">
	<div class="container">
		<div class="row g-5">

			<div style="margin-bottom: 2em;">
				<button type="button" class="btn btn-primary" id="all">전체</button>
				<button type="button" class="btn btn-primary" id="notice">공지사항</button>
				<button type="button" class="btn btn-primary" id="free">자유글</button>
				<button type="button" class="btn btn-primary" id="review">정모후기</button>
			</div>


			<c:forEach var="board" items="${boardList }">
				<div class="wow fadeIn" onclick="location.href='/club/boardWrite?club_no=${club_no}';" style="cursor: pointer;">
				<img src="/resources/img/airplaneSky.jpg" style="border-radius: 10px; float: left; width: 200px; height: 150px; margin-right: 2em;">
	<!-- 				<div> -->
	<!-- 					<h3 style="margin-top: 0.5em;">제목</h3> -->
	<!-- 				</div> -->
					<h5 class="mb-3" style="display: inline-block;">${board.clubBoardsVo.club_board_title }</h5><br>
					<p style="color: black; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp:2; -webkit-box-orient: vertical;">${board.clubBoardsVo.club_board_content }</p>
					<div style="margin-top: 0.5em;">${board.membersVo.member_name }</div>
					<div>${board.clubBoardsVo.club_board_date }</div>
					<i class="fa fa-regular fa-thumbs-up"></i> <span class="clubList_likeCnt">${board.clubBoardsVo.club_board_like }</span>
					<i class="fa fa-regular fa-comment"></i> <span class="clubList_commentCnt">${board.clubBoardsVo.comment_cnt }</span>
				</div>
				<hr>
			</c:forEach>
			
			
		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp"%>