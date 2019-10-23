
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/style.css">
<style>



</style>
<title>댓글 목록</title>
</head>
<body>

<div id='comment'>
<h1>댓글 목록</h1>
<a href='form'>댓글 등록</a>
<table class='table table-hover'>

<tr>
  <th>댓글번호</th>
  <th>내용</th>
  <th>작성자</th>
  <th>작성일</th>
</tr>
<c:forEach items="${comments}" var="comment">
  <tr>
    <td>${comment.no}</td>
    <td><a href='detail?no=${comment.no}'>${comment.content}</a></td>
    <td>${comment.writerName}^^</td>
    <td>${comment.createdDate}</td>
  </tr>
</c:forEach>
</table>
</div>
       
     


</body>
</html>