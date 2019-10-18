<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>레시피 목록</title>
</head>
<body>

<div id='membercontent'>
<h1>회원 목록</h1>
<a href='form'>회원 등록</a>
<table class='table table-hover'>

<tr>
  <th>회원번호</th>
  <th>닉네임</th>
</tr>
<c:forEach items="${members}" var="member">
  <tr>
    <td>${member.no}</td>
    <td><a href='detail?no=${member.no}'>${member.nickname}</a></td>
  </tr>
</c:forEach>
</table>
</div>

</body>
</html>

