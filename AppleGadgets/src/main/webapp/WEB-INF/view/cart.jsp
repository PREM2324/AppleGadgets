<%@ include file="Header.jsp" %>

<html>
<head>
<title>Cart</title>
</head>
<body style="margin-top:100px">
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">
<a href="" class="btn btn-danger pull-left" ng-click="clearCart()">
<span class="glyphicon glphyicon-remove-sign"></span>ClearCart</a>

<a href="<c:url value="/order/${cartId}"></c:url>" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span>Check Out</a>
<table class="table table-striped">
<thead>
<tr><th>NAME</th><th>QUANTITY</th><th>TOTAL PRICE</th><th>REMOVE</th>
</tr>
</thead>



<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="btn btn-danger pull-left" ng-click="removeFromCart(cartItem.id)"><span class="glyphicon glyphicon-remove"></span>
</a></td>
</tr>


</table>
Total Price:{{calculateGrandTotal()}}
</div></div>


			 <!-- Footer tab Command -->
								 
                                 <%@ include file="Footer.jsp" %>

<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>

</body>
</html>




<%--                                            <!--Header Tag  -->
                                        <%@include file="Header.jsp"%>
<html>
<head>
<title>Cart</title>
</head>
<style>
.grndtotal{
font-family:Comic Sans MS Bold;
color:red;
font-size:25px;
text-shadow: 1px 2px 3px #fffff;
}
.homebutton{
margin-left:700px;
direction: rtl;
}
tr{
border-bottom:1px;
}
table{
width:100%;
align:center;

}
.total2{
font-family:Comic Sans MS Bold;
text-shadow: 1px 2px 3px #fffff;
color:red;
font-size:25px;

}
p{
font-family:Comic Sans MS Bold;
text-shadow: 1px 2px 3px #fffff;
color:red;
margin-right:105px;
font-size:23px;
}
th{
background-color:#2D9FC4;
text-align:center;
height:40px;
font-family:arial;
}
.checkout{
margin-right:75px;

}
.hr1{
 border-style: inset;
    border-width: 5px;
    border-color:grey;
}
tr{
border-bottom:1px;
}
td{
text-align:center;
height:72px;
font-family:arial;
}
</style>
<body>	
	<%@include file="Navigation.jsp"%>
	
	<c:set var="total" value="0"></c:set>
		<center><h3>YOUR CART</h3> <span>${cart.username}</span></center>
	
	<div class="container">
	<hr class="hr1">
	<div>
	<table >
		<tr>

			<th>QUANTITY</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<th>CATEGORY</th>
			<th>TOTAL PRIZE</th>

			<th>DELETE</th>

		</tr>

		<c:forEach items="${cartlist}" var="cart">
			<tr>
				<td >${cart.quantity}</td>
				<td>${cart.product.name}</td>
				<td>${cart.product.description}</td>
				<td>${cart.product.price}</td>
				<td>${cart.product.category}</td>
				<td>${cart.totalprice}</td>
			
				<td><a href="<c:url value="delete/cartitem/${cart.cid}"/>">DELETE</a></td>
				
			</tr>
	
			<c:set var="total" value="${total+cart.totalprice}"></c:set>
				
		</c:forEach>
		</table>
		<hr>
		<div>
		<c:choose>
			<c:when test="${total!='0' }">
			
					<div class="row">
					<div class="pull-right"><p>Grand Total
					${total}</p></div>
					</div>
			</c:when>
		</c:choose>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${total!='0' }">
		<hr>
			<a href="<c:url value="/delallcart"/>" class="btn btn-danger pull-left">DELETE ALL</a>
			<a href="<c:url value="/home"/>" class="btn btn-default homebutton">CONTINUE SHPPING</a>
			<a href="<c:url value="/checkout.obj"/>" class="btn btn-primary checkout pull-right">Checkout</a>
		</c:when>
	</c:choose>
	<hr class="hr1">
	</div>
	
</body>
</html> --%>