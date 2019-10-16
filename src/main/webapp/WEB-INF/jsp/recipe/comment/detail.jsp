<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chop.domain.RecipeComment"%>
<!DOCTYPE html>
<html>

<head>
    <title>댓글 상세</title>
</head>

<body>

<h1>댓글 상세</h1>


      내용 : <textarea name='content' rows='5' cols='50'>${recipeComment.content}</textarea><br>
      시간: <input type='text' name='thumbnail' value='${recipeComment.createdDate}'><br>      

            <button>변경</button>
            <a href='delete?no=${recipeComment.no}'>삭제</a>
    

</body>

</html>
