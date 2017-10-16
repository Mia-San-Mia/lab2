<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page errorPage = "erroePage.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Book Details</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style>
     body {
	<!--background-color : #7cfaa2;-->
	background-image: url("./images/pic1.jpg");
    background-size: cover;
	text-align: center;
	}
    </style>
    
    <script>
	    var remove = function() {
		    var ISBN = document.getElementById("ISBN");
		    var encoded_request = encodeURIComponent(ISBN);
		    window.location.href = "remove?ISBN=" + encoded_request;
	    }
	</script>
  </head>
  <body>
    <div >
      <h2>Book Information</h2>
      
      <table border = 1>
        <col width="200px"/>
        <col width="200px"/>
        <col width="100px"/>
        <col width="200px"/>
        <col width="100px"/>
        <col width="100px"/>
        <tr>
          <th>ISBN</th>
          <th>Title</th>
          <th>Publisher</th>
          <th>PublishDate</th>
          <th>Price</th>
          <th>AuthorID</th>
          <th>Name</th>
          <th>Age</th>
          <th>Country</th>
        </tr>
        <tr>
          <td id="ISBN"><s:property value="ISBN"/></td>
          <td><s:property value="title"/></td>
          <td><s:property value="publisher"/></td>
          <td><s:property value="publishDate"/></td>
          <td><s:property value="price"/></td>
          <td><s:property value="authorID"/></td>
          <td><s:property value="name"/></td>
          <td><s:property value="age"/></td>
          <td><s:property value="country"/></td>
        </tr>
      </table>
      <input type="button" class="button" value="删除" onclick="remove()"/>
    </div>
    
  </body>
</html>