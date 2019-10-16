<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/style.css">
<style>
div{
 position: relative;
  z-index: 2;
  height: 54px;
  width: 100%;
  background-color: #6c757d;
  font-size: 12px;
  margin-bottom: 15px;
  border: 1px solid #ffffff;
  border-bottom: 2px solid #dadfe5;
  border-radius: 10;
  padding: 15px 30px;
  font-weight: 500;
  color: #aeaeae;
  -webkit-transition-duration: 500ms;
  transition-duration: 500ms;



}


</style>
<title>댓글 목록</title>
</head>
<body>

				<div class="form-group" >
					<textarea name="content" placeholder="Message" style="color:#007bff; width: 80%; height: 100%;"></textarea>
					<button style="width: 30; height: 30; color:#ffffff; background-color: #6c757d">등록</button>
			</div>

	<div id='recipemain' style="width: 100%; height: 100%;" > 
<form action="update" method="post">
		<c:forEach items="${recipeComments}" var="recipeComment">
			<ul>
				<li style="font-size: 25px; color:#ffffff;">${recipeComment.content} ${recipeComment.createdDate}
				<button style="width: 30; height: 30;  background-color: #6c757d;">
				<a href='form.jsp' style="color:#ffffff;">수정</a></button>
				<button style="width: 30; height: 30; color:#ffffff; background-color: #6c757d">삭제</button>
				
				</li>
        
			</ul>
		</c:forEach>
		</form>
	</div>

</body>
</html>

