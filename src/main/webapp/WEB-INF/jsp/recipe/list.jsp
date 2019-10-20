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
<title>레시피 목록</title>
</head>
<body>

<div id='recipemain'>
<h1>레시피 목록</h1>
<a href='form'>레시피 등록</a>
<table class='table table-hover'>

<tr>
  <th>레시피번호</th>
  <th>제목</th>
  <th>썸네일</th>
</tr>
<c:forEach items="${recipes}" var="recipe">
  <tr>
    <td>${recipe.no}</td>
    <td><a href='detail?no=${recipe.no}'>${recipe.title}</a></td>
    <td>${recipe.thumbnail}</td>
  </tr>
</c:forEach>
</table>
</div>

</body>
</html>

