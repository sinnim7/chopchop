<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>댓글 상세</title>

</head>

<body>

<div id='content'>
<h1>댓글 상세</h1>
<form action='update' method='post'>
     댓글번호:     <input type='text' name='recipeNo' value='${comment.no}' readonly><br>
    레시피번호: <input type='text' name='recipeNo' value='${comment.recipeNo}' readonly><br>
    회원번호: <input type='text' name='memberNo' value='${comment.memberNo}' readonly><br>
    내용 : <textarea name='contents' rows='5'  cols='50'>${comment.content}</textarea><br>
    작성일:${comment.createdDate}<br>
            
            <button>변경</button>
            <a href='delete?no=${comment.no}'>삭제</a>
    </form>
</div>
<jsp:include page="../comment/list.jsp"/>

</body>

</html>
