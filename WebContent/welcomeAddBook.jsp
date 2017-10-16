<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page errorPage = "erroePage.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Add a Book Into Database</title>
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
      <h2>Add a Book Into Database</h2>
    </div>
    <h2 class="headline">
		<a href="welcome.jsp">返回欢迎页</a>
	</h2>
    <div class="content">
    <h2>如果添加的图书作者已存在于数据库中，将在添加图书后返回欢迎页</h2>
    <h2>否则在添加图书后将跳转到添加作者页面</h2>
    <h2> 作者ID在表中是惟一的，请勿重复；出版日期格式如：2017/10/9</h2>
      <form action="addBook">
        <label for="ISBN">Please Input ISBN:（只允许输入13位）</label>
        <input type="text" class="textfield" name="ISBN" maxlength="13"/><br>
        
        <label for="title">Please Input title:</label>
        <input type="text" class="textfield" name="title"/><br>
        
        <label for="authorID">Please Input AuthorID:</label>
        <input type="text" class="textfield" name="authorID"/><br>
        
        <label for="publisher">Please Input Publisher:</label>
        <input type="text" class="textfield" name="publisher"/><br>
        
        <label for="publishDate">Please Input PublishDate:</label>
        <input type="text" class="textfield" name="publishDate"/><br>
        
        <label for="price">Please Input Price:</label>
        <input type="text" class="textfield" name="price"/><br>
        
        <input type="submit" class="button" value="Ok"/>
      </form>
    </div>
  </body>
</html>