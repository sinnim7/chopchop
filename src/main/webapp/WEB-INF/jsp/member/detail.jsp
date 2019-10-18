<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chop.domain.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원 상세</title>

</head>

<body>

<div id='membercontent'>
<h1>회원 상세</h1>
<form action="update" method="post">
        
            
            회원번호: <input type='text' name='no' value='${member.no}' readonly><br>
            비밀번호: <input type='text' name='password' value='${member.password}'><br>
            이메일: <input type='text' name='email' value='${member.email}'><br>
            사진: <input type='file' name='photo' value='${member.photo}'><br>
            닉네임 : <input type='text' name='nickname' value='${member.nickname}'><br>
            전화번호: <input type='text' name='tel' value='${member.tel}'><br>
            우편번호: <input type='text' name='postNo' value='${member.postNo}'><br>
            기본주소: <input type='text' name='baseAddress' value='${member.baseAddress}'><br>
            상세주소: <input type='text' name='detailAddress' value='${member.detailAddress}' readonly><br>
            등급: <input type='text' name='grade' value='${member.grade}'><br>
      

      
      

            <button>변경</button>
            <a href='delete?no=${member.no}'>삭제</a>
    </form>
</div>
</body>

</html>
