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
	</header><br>
    <div id="wrap" align="center">
      <h1>게시글 상세보기</h1>
      <table>
        <tr>
          <th>작성자</th>
          <td>${board.username}</td>
          <th>이메일</th>
          <td>${board.email}</td>
        </tr>
        <tr>
          <th>작성일</th>
          <td><fmt:formatDate value="${board.writedate}" /></td>
          <th>조회수</th>
          <td>${board.readcount }</td>
        </tr>
        <tr>
          <th>제목</th>
          <td colspan="3">${board.title }</td>
        </tr>
        <tr>
          <th>내용</th>
          <td colspan="3"><pre>${board.content }</pre></td>
        </tr>
      </table>
      <br> 
      <br> 
      <input type="button" value="게시글 수정" onclick="window.open('/mallwithjsp/manager.do?command=board_check_pass_form&num=${board.num}', 'update', 'width = 500, height = 230')">
      <input type="button" value="게시글 삭제"  onclick="window.open('/mallwithjsp/manager.do?command=board_check_pass_form&num=${board.num}', 'delete', 'width = 500, height = 230')">
      <input type="button" value="게시글 리스트"   onclick="location.href='/mallwithjsp/manager.do?command=board_list'"> 
      <input type="button" value="게시글 등록"  onclick="location.href='/mallwithjsp/manager.do?command=board_write_form'">
    </div>
  </body>
</html>