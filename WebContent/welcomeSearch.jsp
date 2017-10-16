<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html >
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Search Books By Author</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
    body {
        <!--background-color : #7cfaa2;-->
	background-image: url("./images/pic1.jpg");
    background-size: cover;
        text-align: center;
    }
    .title {
	font-family:  sans-serif;
	text-align: center;
	}
	
	.content {
		margin-top: 40px;
		text-align: center;
		padding-top: 20px;
		padding-bottom: 20px;
	}
	.headline {
	margin-top: 20px;
	text-align: center;
	font-size: 20px;
}
    
    </style>
  </head>
  <body>
    <div class="title">
      <h2>Search an Author's Books</h2>
    </div>
    <h2 class="headline">
		<a href="welcome.jsp">返回欢迎页</a>
	</h2>
    <div class="content">
    	<h2>如果作者已存在于数据库中将返回搜索结果</h2>
    	<h2>否则跳转到添加作者页面</h2>
      <form action="searchByAuthor">
	    <label for="name">Please input the author's name:</label>
	    <input type="text" class="textfield" name="name"/>
	    <input type="submit" class="button" value="提交"/>
	  </form>
    </div>
  </body>
</html>