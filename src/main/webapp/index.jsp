<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
 %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<jsp:include page="NavBar.jsp"></jsp:include>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="/demo9_war_exploded/hello">Hello Servlet</a>
</body>
</html>