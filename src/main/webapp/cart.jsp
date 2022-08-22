<%@page import="cn.valentine.connection.DbCon"%>
<%@page import="cn.valentine.model.*"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
%>

<!DOCTYPE html>
<html>
<head>
<%@include file= "includes/header.jsp" %>
<title>Cart page  </title>
</head>
<body>
<%@include file = "includes/navBar.jsp"%>
</body>
</html>
<%@include file= "includes/footer.jsp" %>

