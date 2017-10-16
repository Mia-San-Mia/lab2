<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page errorPage = "errorPage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Update a Book's Information</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
    body {
        <!--background-color : #7cfaa2;-->
	background-image: url("./images/pic1.jpg");
    background-size: cover;
    }
    </style>
  </head>
  <body>
    <div class="title">
      <h2>Update a Book's Information</h2>
    </div>
    <h2 class="headline">
		<a href="welcome.jsp">返回欢迎页</a>
	</h2>
    <div class="content">
    <h2>如果图书修改后新的作者任然存在于数据库中，将在修改图书信息后返回欢迎页</h2>
    <h2>否则在修改图书信息后将跳转到添加作者页面，以添加新作者到数据库中</h2>
      <form action="updateBook">
        <label for="ISBN">Please input ISBN:（只允许输入13位）</label>
        <input type="text" class="textfield" name="ISBN" maxlength="13"/> <br>
        
        <label for="authorID">Please input author's id:</label>
        <input type="text" class="textfield" name="authorID"/><br>
        
        <label for="publisher">Please input publisher:</label>
        <input type="text" class="textfield" name="publisher"/><br>
        
        <label for="publishDate">Please input publish date(格式如2017/10/9):</label>
        <input type="text" class="textfield" name="publishDate"/><br>
        
        <label for="price">Please input price:</label>
        <input type="text" class="textfield" name="price"/><br>
        
        <input type="submit" class="button" value="Ok"/>
      </form>
    </div>
    
  </body>
</html>