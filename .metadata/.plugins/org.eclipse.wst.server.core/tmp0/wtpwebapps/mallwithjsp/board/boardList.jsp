<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/shopping.css">
    <script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<header>
		<div class="head">
			<div class="upperHead">
				<div id="logo">
					<a href="#">
						<img src="img/header/logo.png" alt="한살림 장보기">
					</a>
				</div>
				<div class="login">
					<ul class="myMenu">
						<li class="dlvrMenu">
							<a href="#"><img src="img/header/icoDlvr.png" alt="매장배달 바로가기"></a>
						</li>
						<li>
							<%
								String userid = request.getParameter("userid");
								if (userid == null) {
							%>
									<a href="./login/loginform.jsp">로그인</a>
							<%
								} else {
							%>
									<a href="http://localhost:8080/mallwithjsp/manager.do?command=logout">로그아웃</a>
							<%
								}
							%>
						</li>
						<li>
							<a href="#">나의한살림</a>
						</li>
						<li>
							<a href=http://localhost:8080/mallwithjsp/manager.do?command=board_list>고객센터</a>
						</li>
						<li><a href="#">매장안내</a></li>
					</ul>
				</div>
			</div>
			<div class="lowerHead">
				<div class="category">
					<button class="allProduct" type="button">
						<span>전체물품</span>
					</button>
					<ul class="categoryMain">
						<li><a href="#">추천</a></li>
						<li><a href="#">알뜰</a></li>
						<li><a href="#">새물품</a></li>
						<li><a href="#">사전예약</a></li>
						<li><a href="#">꼬마와땅</a></li>
						<li><a href="#">채식</a></li>
						<li><a href="#">참여</a></li>
					</ul>
				</div>
				<div class="search">
					<div class="searchCon">
						<input type="search" placeholder="무엇을 찾아드릴까요?" id="searchKeyword" value="" maxlength="300"
							onkeydown="searchKeydown();">
						<button class="btnSearch" type="button" onclick="searchClick();">
							<span class="hide">검색</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</header>
	<br>
<div id="wrap" align="center">
      <h1>문의글 리스트</h1>
      <table class="list">
        <tr>
          <td colspan="5" style="border: white; text-align: right">
          <a  href="/mallwithjsp/manager.do?command=board_write_form">1:1 문의</a></td>
        </tr>
        <tr>
          <th>번호</th>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
          <th>조회</th>
        </tr>
        <c:forEach var="board" items="${boardList}">
          <tr class="record">
            <td>${board.num }</td>
            <td><a href="#" 
            onclick="window.open('/mallwithjsp/manager.do?command=board_check_pass_form&num=${board.num}', 'view', 'width = 500, height = 230')">
              ${board.title}</a></td>
            <td>${board.username}</td>
            <td><fmt:formatDate value="${board.writedate }" /></td>
            <td>${board.readcount}</td>
          </tr>
        </c:forEach>
      </table>
	  	<ul class="board_paging">
			
			<!-- 첫페이지로  -->
			<li>
				<a href="http://localhost:8080/mallwithjsp/manager.do?command=board_list&page=1${searchStatus}">&lt;&lt;</a>
			</li>
			
			<!-- 이전 페이지로 -->
			<li>
			<c:choose>
				<c:when test="${pi.page == 1}">
					<a href="javascript:;">&lt;</a>
				</c:when>
				<c:otherwise>
					<a href="http://localhost:8080/mallwithjsp/manager.do?command=board_list&page=${page - 1}${searchStatus}">&lt;</a>
				</c:otherwise>
			</c:choose>
			</li>
			
			<c:forEach var="p" begin="${1}" end="${maxpage}">
				<li>
					<a href="http://localhost:8080/mallwithjsp/manager.do?command=board_list&page=${p}${searchStatus}" <c:if test="${p == pi.page }">
						class = 'current_page'
				</c:if>>${p}</a>
				</li>
			</c:forEach>
			
			<!-- 다음페이지로 -->
			<li>
			<c:choose>
				<c:when test="${page == maxpage}">
					<a href="javascript:;">&gt;</a>
				</c:when>
				<c:otherwise>
					<a href="http://localhost:8080/mallwithjsp/manager.do?command=board_list&page=${page + 1}${searchStatus}">&gt;</a>
				</c:otherwise>
			</c:choose>
			</li>
			
			<!-- 끝페이지로  -->
			<li>
				<a href="http://localhost:8080/mallwithjsp/manager.do?command=board_list&page=${maxpage}${searchStatus}">&gt;&gt;</a>
			</li>
		</ul>
    </div>
</body>
</html>