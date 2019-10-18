<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <title>회원 등록폼</title>
</head>
<body>

    
<div id='membercontent'>
<h1>회원 등록폼</h1>
<form action='add' method='post'>

            회원번호: <input type='text' name='no'><br>
            비밀번호: <input type='text' name='password'><br>
            이메일: <input type='text' name='email'><br>
            사진: <input type='file' name='photo'><br>
            닉네임 : <input type='text' name='nickname'><br>
            전화번호: <input type='text' name='tel'><br>
            우편번호: <input type='text' name='postNo'><br>
            기본주소: <input type='text' name='baseAddress'><br>
            상세주소: <input type='text' name='detailAddress'><br>
            등급: <input type='text' name='grade'><br>

  
  <button>등록</button>
</form>
</div>




</body>
</html>
