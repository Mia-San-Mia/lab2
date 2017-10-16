<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page errorPage = "erroePage.jsp" %>
<!DOCTYPE html">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Add a Author's Information</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
    body {
        <!--background-color : #7cfaa2;-->
	background-image: url("./images/pic2.jpg");
    background-size: cover;
    }
    </style>
  </head>
  <body>
    <div class="title">
      <h2>Add a Author's Information</h2>
    </div>
    <h2 class="headline">
		<a href="welcome.jsp">返回欢迎页</a>
	</h2>
    <div class="content">
      <form action="addAuthor">
        <label for="authorID">Please input AuthorID:</label>
        <input type="text" class="textfield" name="authorID"/><br>
        
        <label for="name">Please input author's name:</label>
        <input type="text" class="textfield" name="name"/><br>
        
        <label for="age">Please input author's age:</label>
        <input type="text" class="textfield" name="age"/><br>
        
        <label for="country">Please input author's country:</label>
        <input type="text" class="textfield" name="country"/><br>
        
        <input type="submit" class ="button" value="Ok"/>
      </form>
    </div>
  </body>
</html>