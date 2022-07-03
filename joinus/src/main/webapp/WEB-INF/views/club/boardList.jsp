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
				<button type="button" class="btn btn-primary" id="notice">공지</button>
				<button type="button" class="btn btn-primary" id="free">자유글</button>
				<button type="button" class="btn btn-primary" id="review">정모후기</button>
			</div>


			<c:forEach var="board" items="${boardList }">
				<div class="wow fadeIn">
				<img src="/resources/img/airplaneSky.jpg" style="border-radius: 10px; float: left; width: 200px; height: 150px; margin-right: 2em;">
	<!-- 				<div> -->
	<!-- 					<h3 style="margin-top: 0.5em;">제목</h3> -->
	<!-- 				</div> -->
					<h5 class="mb-3" style="display: inline-block;">${board.clubBoardVo.club_board_title }</h5><br>
					<span style="color: black;">${board.clubBoardVo.club_board_content }</span>
					<div style="margin-top: 0.5em;">${board.membersVo.member_name }</div>
					<div>${board.clubBoardVo.club_board_date }</div>
					<i class="fa fa-regular fa-thumbs-up"></i> <span class="clubList_likeCnt">${board.clubBoardVo.club_board_like }</span>
					<i class="fa fa-regular fa-comment"></i> <span class="clubList_commentCnt">10</span>
				</div>
				<hr>
			</c:forEach>
			
			
		</div>
	</div>
</div>


<%@ include file="../include/footer.jsp"%>