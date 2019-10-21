<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            좋아요수:<br>
            가입일: ${recipe.createdDate}<br>
            기타정보: <input type='text' name='otherInfo' value='${recipe.otherInfo}'><br>
            레시피번호: <input type='text' name='no' value='${recipe.no}' readonly><br>
            태그: <input type='text' name='tag' value='${recipe.tag}'><br>
            <button>변경</button>
            <a href='delete?no=${recipe.no}'>삭제</a>
    </form>
</div>



<div id='comment'>
<table class='table table-hover'>
<h2>댓글</h2>
${recipe.member.nickname}
       <textarea name='content' rows='5' cols='50'>댓글입력</textarea>
       <div class="form-group">
    <label for="exampleFormControlTextarea1">Example textarea</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
       <button href='http://localhost:8888/app/recipe/comment/form'>등록</button><br>
<tr>
  <th>댓글번호</th>
  <th>내용</th>
  <th>작성자</th>
  <th>작성일</th>
</tr>

  </tr>
</table>
</div>

<div>
<c:forEach items="${recipes}" var="recipe">
  <tr>
    <td>${recipe.no}</td>
    <td><a href='detail?no=${recipe.no}'>${recipe.content}</a></td>
    <td>${recipe.member.nickname}작성자?</td>
    <td>${recipe.createdDate}</td>
    
  </tr>
</c:forEach>
${recipe.member.nickname}
</div>
        
</body>

</html>
