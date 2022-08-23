<%@page import="cn.valentine.connection.DbCon"%>
<%@page import="cn.valentine.model.*"%>
<%@page import="cn.valentine.dao.ProductDao"%>
<%@page import="java.util.*"%>


<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
%>

<%
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts();
%>


<!DOCTYPE html>
<html>
<head>
<%@include file="includes/header.jsp"%>
<title>Welcome to Shopping Cart!</title>
</head>
<body>
	<%@include file="includes/navBar.jsp"%>

	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">

			<%
			if (!products.isEmpty()) {
				for (Product p : products) {%>
			<div class="col-md-3 my-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src="product-image/<%= p.getImage() %>"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%= p.getName() %></h5>
						<h6 class="price"> Price: $<%= p.getPrice() %></h6>
						<h6 class="category">Category: <%= p.getCategory()%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> 
							<a href="#"	class="btn btn-primary">Buy Now</a>
						</div>
					</div>

				</div>
			</div>
			<%
			}
			} else {
				out.println("There is no proucts");
			}
			%>


		</div>
	</div>


	<%@include file="includes/footer.jsp"%>
</body>
</html>

<!-- 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 -->