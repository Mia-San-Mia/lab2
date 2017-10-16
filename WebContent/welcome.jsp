<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
    body {
	<!--background-color : #7cfaa2;-->
	background-image: url("/pic2.jpg");
    background-size: cover;
	text-align: center;
	}
	.welcome-footer {
	text-align: right;
	padding-left: 120px;
	padding-right: 30px;
	padding-top: 50px;
	padding-bottom: 50px;
	}
	.welcome-button {

	margin-top: 50px;
	border-style:solid;
	width: 200px;
	height: 40px;
	border-color: rgba(12, 12, 12, 0);
	margin-left: 40px;
	margin-right: 40px;
	font-size: 20px;
	box-shadow: 2px 2px 5px #bbb;
}
    </style>
    <title>Books and Authors Management System</title>
  </head>
 	<body>
    
    <div class="welcome-title">
      <h1>Welcome to use my Books and Authors Management System</h1>
    </div>
    
    <div >
		<form action="welcomeSearch"><input type="submit" class="welcome-button" value="Search By Author&nbsp;&nbsp;"/></form>
		<br/>
		<form action="welcomeAdd"><input type="submit" class="welcome-button" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add a Book&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"/></form>
		<br/>
		<form action="welcomeUpdate"><input type="submit" class="welcome-button" value="Update a Book Info"/></form>
    </div>
    
    <div class="welcome-footer">
      <p>Author:王智&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
	  <p>学号:1150310212&nbsp;&nbsp;&nbsp;&nbsp; </p>
	  <p>联系方式:18804634708 </p>
	  <p>如有任何问题欢迎联系我</p>
    </div>
  </body>
</html>