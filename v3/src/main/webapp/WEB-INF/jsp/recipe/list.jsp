<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>레시피 목록</title>
<link rel='stylesheet' href='/css/style.css'>
</head>
<body>






<table class='table table-hover'>

<!--  
<div>

<c:forEach items="${recipes}" var="recipe">
    <td><a href='detail?no=${recipe.no}'>
    <img src='/upload/recipe/${recipe.thumbnail}' class='photo2' ><br>
    ${recipe.title}
    </td>
    <span>&nbsp</span>
</c:forEach>

</div>
</table>
</div>
-->

<!-- 
<c:forEach items="${recipes}" var="recipe">
<img src='/upload/recipe/${recipe.thumbnail}' >
</c:forEach>
 -->




 <!-- ##### Catagory Area Start ##### -->
   <div class="post-catagory section-padding-100" >
        <div class="container">
            <div class="row  justify-content-center">
            <c:forEach items="${recipes}" var="recipe">
                <!-- Single Post Catagory -->
                <div class="thumbnail">
                    <div class="recipe-catagory mb-30">
                        
                        <a href='detail?no=${recipe.no}'><img src='/upload/recipe/${recipe.thumbnail}' >
                        
                        <!-- Content -->
                        <div class="catagory-content-bg">
                            <div class="catagory-content">
                            
                                <a href='detail?no=${recipe.no}' class="post-title">${recipe.title}</a>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                </div>

          </c:forEach>
        </div>
    </div>
      
      
      <h2>댓글</h2>
       <textarea name='content' rows='5' cols='50'>댓글입력</textarea>
       <button><a href='http://localhost:8888/app/recipe/comment/form'>등록</button><br>


      <div id='comment'>
<h1>댓글 목록</h1>
<table class='table table-hover'>

<tr>
  <th>댓글번호</th>
  <th>내용</th>
  <th>작성자</th>
  <th>작성일</th>
</tr>
<c:forEach items="${recipeComments}" var="recipeComment">
  <tr>
    <td>${recipeComment.no}</td>
    <td><a href='detail?no=${recipeComment.no}'>${recipeComment.content}</a></td>
    <td>${recipeComment.member.nickname}</td>
    <td>${recipeComment.createdDate}</td>
  </tr>
</c:forEach>
</table>
</div>


</body>
</html>

