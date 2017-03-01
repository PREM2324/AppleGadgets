<%@ include file="Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RegisterCustomer</title>
</head>
<body>
<div class="container-wrapper">
<div class="container">

<c:url var="url" value="/all/registerCustomer"></c:url>

<form:form action="${url }" commandName="customer">

<div class="form-group">
<form:label path="firstname" style="margin-top:80px">FIRST NAME</form:label>
<form:input path="firstname"></form:input>
</div>

<div class="form-group">
<form:label path="lastname">LAST NAME</form:label>
<form:input path="lastname"></form:input>
</div>
<div class="form-group">
<form:label path="email">EMAIL</form:label>
<form:input path="email"></form:input>
</div>
<div class="form-group">
<form:label path="phonenumber">PHONE NUMBER</form:label>
<form:input path="phonenumber"></form:input>
</div>
<div class="form-group">
<form:label path="users.username">USERNAME</form:label>
<form:input path="users.username"></form:input>
</div>
<div class="form-group">
<form:label path="users.password">PASSWORD</form:label>
<form:input path="users.password" type="password"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
<form:input path="billingAddress.apartmentNumber"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.streetName">STREET NAME</form:label>
<form:input path="billingAddress.streetName"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.city">CITY</form:label>
<form:input path="billingAddress.city"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.state">STATE</form:label>
<form:input path="billingAddress.state"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.country">COUNTRY</form:label>
<form:input path="billingAddress.country"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.zipcode">ZIPCODE</form:label>
<form:input path="billingAddress.zipcode"></form:input>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentNumber">APARTMENT NUMBER</form:label>
<form:input path="shippingAddress.apartmentNumber"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.streetName">STREET NAME</form:label>
<form:input path="shippingAddress.streetName"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.city">CITY</form:label>
<form:input path="shippingAddress.city"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.state">STATE</form:label>
<form:input path="shippingAddress.state"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.country">COUNTRY</form:label>
<form:input path="shippingAddress.country"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.zipcode">ZIPCODE</form:label>
<form:input path="shippingAddress.zipcode"></form:input>
</div>

<input type="submit" value="register">

</form:form>

</div>

</div>
</body>
</html>