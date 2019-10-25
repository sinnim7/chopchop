<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>

  <title>댓글 등록폼</title>
</head>
<body>
    
<div id='recipemain'>
<h1>댓글 등록폼</h1>
<form action='add' method='post'>
  회원번호: <input type='text' name='memberNo'readonly><br>
  레시피번호: <input type='text' name='recipeNo'readonly><br>
<textarea name='rcontent' rows='5' cols='50'>댓글 입력</textarea><button>등록</button><br>


  
</form>
</div>




</body>
</html>
