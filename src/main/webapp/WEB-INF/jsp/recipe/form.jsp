<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <style>
  div {
    border: 10px solid black;
  }
  </style>

  <title>레시피 등록폼</title>
</head>
<body>

    
<div id='recipemain'>
<h1>레시피 등록폼</h1>
<form action='add' method='post'>
  레시피명: <input type='text' name='title'><br>
  간단소개 : <textarea name='content' rows='5' cols='50'></textarea><br>
  카테고리: <input type='text' name='category'><br>
  기타정보: <input type='text' name='otherInfo'><br>
  
  <!-- 
  
  
   -->
  
  썸네일: <input type='file' name='thumbnail'><br>
  태그: <input type='text' name='tag'><br>
  
  <!--  -->
  
  
  재료: <input type='text' name='ingredient'><br>
  용량: <input type='text' name='quantity'><br>
  
  <!--  -->
  
  조리순서: <input type='text' name='process_no'><br>
  사진: <input type='file' name='photo'><br>
  내용: <input type='text' name='content'><br>
  
  
  
  <button>등록</button>
</form>
</div>




</body>
</html>
