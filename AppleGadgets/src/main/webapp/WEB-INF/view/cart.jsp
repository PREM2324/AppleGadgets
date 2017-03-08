
<%@ include file="Header.jsp" %>
<html>
<head>

<title>List Of Cart Items</title>
</head>
<body>


<table class="table table-striped" style="margin-top:90px">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th>
</tr>
</thead>

<tr ng-repeat="cartItem in cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
</tr>

</table>




<script src="<c:url value="/resource/js/controller.js"></c:url>"></script>
</body>
</html>