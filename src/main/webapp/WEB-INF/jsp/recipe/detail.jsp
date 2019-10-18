<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chop.domain.Recipe"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>레시피 상세</title>

</head>

<body>

<div id='content'>
<h1>레시피 상세</h1>
<form action="update" method="post">
        
            
            스크랩: <input type='text' name='scrap' value='${recipe.scrap}'><br>
            썸네일: <input type='file' name='thumbnail' value='${recipe.thumbnail}'><br>
            작성자명:
            레시피명: <input type='text' name='title' value='${recipe.title}'><br>
            내용 : <textarea name='content' rows='5' cols='50'>${recipe.content}</textarea><br>
            조회수: ${recipe.viewCount}<br>
            좋아요수:
            기타정보: <input type='text' name='otherInfo' value='${recipe.otherInfo}'><br>
            레시피번호: <input type='text' name='no' value='${recipe.no}' readonly><br>
            태그: <input type='text' name='tag' value='${recipe.tag}'><br>
      

      
      

            <button>변경</button>
            <a href='delete?no=${recipe.no}'>삭제</a>
    </form>
</div>
</body>

</html>
