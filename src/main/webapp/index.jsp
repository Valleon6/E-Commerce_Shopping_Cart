<%@page import= "cn.valentine.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Shopping Cart!</title>
<%@include file="includes/header.jsp"%>
</head>
<body>
	<%@include file="includes/navBar.jsp"%>
	
<% out.print(DbCon.getConnection());%>

	<%@include file="includes/footer.jsp"%>
</body>
</html>

<!-- Access token: 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 -->