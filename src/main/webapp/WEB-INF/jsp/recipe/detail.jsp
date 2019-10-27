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
            레시피번호: <input type='text' name='recipeNo' value='${recipe.recipeNo}' readonly><br>
            태그: <input type='text' name='tag' value='${recipe.tag}'><br>
            <button>변경</button>
            <a href='delete?no=${recipe.recipeNo}'>삭제</a>
    </form>
    <br>
    <br>
</div>




<div id='recipemain'>
<h1>댓글 등록폼</h1>
<form class="answer-write" action='../json/recipe/comment/add' method='post'>
  <input type='hidden' name='memberNo'  value='${recipeComment.memberNo}' readonly><br>
   <input type='hidden' name='recipeNo' value='${recipeComment.commentNo}' readonly><br>
<textarea name='rcontent' rows='5' cols='50' placeholder="댓글 입력"></textarea>
<input type="submit" value="댓글달기"/>


  
</form>
</div>

<div id='comment'>
<h1>댓글 목록</h1>
<table class='table table-hover'>
<tr>
  <th>댓글번호</th>
  <th>내용</th>
  <th>작성자</th>
  <th>작성일</th>
</tr>
<c:forEach items="${recipe.comments}" var="RecipeComment">
  <tr>
    <td>${RecipeComment.commentNo}</td>
    <td><a href='../comment/detail?no=${RecipeComment.commentNo}'>${RecipeComment.rcontent}</a></td>
    <td>${RecipeComment.memberNo}</td>
    <td>${RecipeComment.createdDate}</td>
  </tr>
</c:forEach>
</table>
</div>




<script src="answerform.js"></script>
</body>
</html>
