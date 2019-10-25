<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="chop.domain.Recipe"%>
<!DOCTYPE html>
<html>
<head>
    <title>레시피 상세</title>
<link rel='stylesheet' href='/css/common.css'>
</head>

<body>

<div id='recipemain'>
<h1>레시피 상세</h1>
<form action='update' method='post' enctype='multipart/form-data'>
<img src='/upload/recipe/${recipe.thumbnail}' class='photo2'><br> 
<input type='file' name='file'><br>
            스크랩: <input type='text' name='scrap' value='${recipe.scrap}'><br>
            레시피명: <input type='text' name='title' value='${recipe.title}'><br>
            내용 : <textarea name='content' rows='5' cols='50'>${recipe.content}</textarea><br>
            조회수: ${recipe.viewCount}<br>
            가입일: ${recipe.createdDate}<br>
            기타정보: <input type='text' name='otherInfo' value='${recipe.otherInfo}'><br>
            레시피번호: <input type='text' name='no' value='${recipe.no}' readonly><br>
            태그: <input type='text' name='tag' value='${recipe.tag}'><br>
            <button>변경</button>
            <a href='delete?no=${recipe.no}'>삭제</a>
    </form>
    <br>
    <br>
</div>



<div>

<div id='recipemain'>
<h1>댓글 등록폼</h1>
<form action='add' method='post' var="RecipeComment">
<textarea name='rcontent' rows='5' cols='50'>댓글 입력</textarea><button>등록</button><br>
</form>
</div>




<c:forEach items="${recipe.comments}" var="RecipeComment">
<tr>
    <td>${RecipeComment.no}</td>
    <td>${RecipeComment.rcontent}</td>
    <td>${RecipeComment.createdDate}</td>
    <br>
<tr>
</c:forEach>
</div>

<div>

<%-- <c:out value="${Recipe.RecipeComment.content}"/> --%>

</div>


       
</body>

</html>
