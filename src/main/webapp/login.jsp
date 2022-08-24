<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="cn.valentine.model.*"%>
    <%@page import="java.util.*"%>
    
    
    <%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
response.sendRedirect("index.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>


<!DOCTYPE html>
<html>
<head> 
<%@include file= "includes/header.jsp" %>
<title>Shopping cart Login</title>
</head>
<body>
<%@include file = "includes/navBar.jsp"%>
<div class="container">
		<div class="card w-30 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">

					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Enter Your Email" required>
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="login-password" placeholder="*******"
							required>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>

				</form>
			</div>
		</div>
	</div></body>
</html>
<%@include file= "includes/footer.jsp" %>

