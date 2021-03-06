<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@page import="com.estsoft.mysite.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%UserVo userVo = (UserVo)request.getAttribute("authUser");
%>

<!doctype html>
<html>
<head>
<title>mysite</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="/mysite3/assets/css/user.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="container">
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<div id="content">
			<div id="user">

				<form id="modify-form" name="modifyForm" method="post" action="/mysite3/user/modify">
				<input type='hidden' name="no" value=${requestScope.authUser.no}>
									<label class="block-label" for="name">이름</label> <input id="name"
						name="name" type="text" value=${requestScope.authUser.name}> <label
						class="block-label">패스워드</label> <input name="passwd"
						type="password" value="">

					<fieldset>
						<legend>성별</legend>
						<c:choose>
						<c:when test= "${'F'==requestScope.authUser.gender}">
						<label>여</label> <input type="radio" name="gender" value="F"
							checked="checked"> <label>남</label> <input type="radio"
							name="gender" value="M">
					</c:when>
					<c:otherwise>
					<label>여</label> <input type="radio" name="gender"
						value="F"> <label>남</label> <input
						type="radio" name="gender" value="M" checked="checked">

					</c:otherwise>
					</c:choose>
					</fieldset>
					<input type="submit" value="수정하기">

				</form>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/include/navigation.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</div>
</body>
</html>