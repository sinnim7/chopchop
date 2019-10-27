<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="commentWrite">
    <form name="../comment/add" method="post">
        <input type="hidden" name="commentNo" value="${recipeComment.commentNo}">
        <div class="form group col-lg-4" style="padding-top:18px;">
        <input class="form-control" id="memberNo" name="memberNo" placeholder="회원번호">
        </div>
        
        <div class="form-group cpl-lg-12">
           <textarea name="rcontent" id="rcontent" c;ass="from-cpmtrol" placeholder=""></textarea>
        </div>
        
        <input class="btn btn-success pull-right" type="submit" value="답변하기"/>
        
        <div class="clearfix"/>
    </form>
</div>




<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
</body>
</html>