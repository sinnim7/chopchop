<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="java.sql.DriverManager,
                   java.sql.Connection,
                   java.sql.Statement,
                   java.sql.ResultSet,
                   java.sql.SQLException"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
 request.setCharacterEncoding("utf-8");  //Set encoding
 String id = request.getParameter("id");            
 String name = request.getParameter("name");
 String pwd = request.getParameter("pwd");
 String email = request.getParameter("email");
//POST로 Input.html로부터 입력받은 내용을 변수화

 try{
  Class.forName("com.mysql.jdbc.Driver");
  String url = "jdbc:mysql://localhost:8888/web02?useUnicode=true&characterEncoding=utf-8";
  Connection con = DriverManager.getConnection(url,"admin","1234");
  Statement stat = con.createStatement();

  String query = "INSERT INTO member(id, name, pwd, email)  VALUES('"+id+"','"+name+"','"+pwd+"','"+email+"')";
//INSERT into member(id,name,pwd,email) VALUES ('id','name','pwd','email') 쿼리문
  stat.executeUpdate(query);
  stat.close();
  con.close();
 }
 catch(Exception e){
  out.println( e );
 }
 response.sendRedirect("output.jsp"); 
%>




</body>
</html>