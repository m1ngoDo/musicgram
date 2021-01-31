<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body><div class='container'>
	<nav class="navbar navbar-expand-lg">
	<a href="/musicgram/content"><img src="/musicgram/img/logo.png" alt="instagram-type" border="0" width=200px></a>
	
	<!-- 검색창 --> 
	<form action="/musicgram/content/tag" method="get">
		<input type="text" placeholder="tag를 검색하세요." name="tag">
	</form>
	
	<%
		if(session.getAttribute("session_id")==null){
	%>
		<a href="/musicgram/user/loginForm">로그인</a> 
	<%
		}else{
		String session_id = (String)session.getAttribute("session_id");
		out.println(session_id+"님 반갑습니다.");
	%>
		<a href="#" onclick="location.href='/musicgram/upload.jsp'">upload</a>
	
		<a href="#" onclick="location.href='/musicgram/user/${session_id}'">my page</a>
		<a href="/musicgram/user/logout">로그아웃</a>
	<%
		}
	%>
	
	
	</nav>
		<div class="container">
			<div class="btn-group">
				<div class="btn"
					onclick="location.href='/musicgram/content/'">전체</div>
			</div>
			<c:forEach var="genre" items="${genreList}">
				<div class="btn-group">
					<div class="btn"
						onclick="location.href='/musicgram/content/genre?genre=${genre}'">${genre}</div>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
