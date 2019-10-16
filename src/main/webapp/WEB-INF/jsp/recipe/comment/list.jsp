<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
  div {
    border: 10px solid black;
  }
</style>
<title>댓글 목록</title>
</head>
<body>

<div id='recipemain'>
<h1>댓글 목록</h1>
<a href='form'>댓글 등록</a>
<table class='table table-hover'>

<tr>
  <th>댓글번호</th>
  <th>내용</th>
  <th>시간</th>
</tr>
<c:forEach items="${recipeComments}" var="recipeComment">
  <tr>
    <td>${recipeComment.no}</td>
    <td>${recipeComment.createdDate}</td>
    <td><a href='detail?no=${recipeComment.no}'>${recipeComment.content}</a></td>
  </tr>
</c:forEach>
</table>
</div>

</body>
</html>

