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

<div>
<h1>레시피 목록</h1>
<a href='form'>레시피 등록</a></br>

<table>
<tr>
  <th>번호</th>
  <th>제목</th>
  <th>대표사진</th>
</tr>
<c:forEach items="${recipes}" var="recipe">
  <tr>
    <td>${recipe.no}</td>
    <td>${recipe.title}</td>
    <td>${recipe.thumbnail}</td>
  </tr>
</c:forEach>
</table>
</div>

</body>
</html>