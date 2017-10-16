<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Show Books</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
    body {
        <!--background-color : #7cfaa2;-->
	background-image: url("./images/pic1.jpg");
    background-size: cover;
        text-align: center;
    }
    </style>
    <!--  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script> -->
   
    <script>
	  var showBookDetails = function(e) {
		  var encoded_request = encodeURIComponent(e.innerHTML);
		  window.location.href = "showBookDetails?title=" + encoded_request;
	  }
	</script>
  </head>
  <body>
    <div class="title">
      <h2>These are <s:property value="name"/>'s books stored in my database:</h2>
    </div>
    <h2 class="headline">
		<a href="welcome.jsp">返回欢迎页</a>
	</h2>
    <div class="content">
    <h2>点击列表中的图书显示图书的详细信息</h2>
      <ol>
      <s:iterator value="books">
	    <li onclick="showBookDetails(this);">
	      <s:property value="top"/>
	    </li>
      </s:iterator>
	  </ol>
    </div>
  </body>
</html>