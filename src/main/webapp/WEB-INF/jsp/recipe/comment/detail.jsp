<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chop.domain.RecipeComment"%>
<%@ page import="chop.domain.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>댓글 상세</title>

</head>

<body>

<div id='content'>
<h1>댓글 상세</h1>
<form action="update" method="post">
        
    레시피번호: <input type='text' name='recipeNo' value='${recipeComment.recipeNo}' readonly><br>
    회원번호: <input type='text' name='memberNo' value='${recipeComment.memberNo}' readonly><br>
    내용 : <textarea name='content' rows='5' cols='50'>${recipeComment.content}</textarea><br>
    작성일: <input type='text' name='createdDate' value='${recipeComment.createdDate}'><br>
            
            <button>변경</button>
            <a href='delete?no=${recipeComment.no}'>삭제</a>
    </form>
</div>
</body>

</html>
