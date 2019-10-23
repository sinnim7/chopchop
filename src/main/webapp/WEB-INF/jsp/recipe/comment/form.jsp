<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <style>
  div {
    border: 10px solid black;
  }
  </style>

  <title>댓글 등록폼</title>
</head>
<body>
    
<div id='recipemain'>
<h1>댓글 등록폼</h1>
<form action='add' method='post'>
  회원번호: <input type='text' name='memberNo'><br>
  레시피번호: <input type='text' name='recipeNo'><br>
  내용 : <textarea name='content' rows='5' cols='50'></textarea><br>
  작성일: <input type='text' name='createdDate'><br>
  <button>등록</button>
</form>
</div>




</body>
</html>
