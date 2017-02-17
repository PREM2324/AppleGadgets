
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="Header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

										<!-- Date Picker JQuery -->
										
	  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      									    
<script>
$(function(){
$('input[name=mfg]').datepicker({
	format:'YYYY-mm-dd'
});	
});
</script>
</head>

<body style="margin-top:80px;">
<div class="container-wrapper">
<div class="container">
<c:url value="/admin/product/editProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product" enctype="multipart/form-data">

<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>

<div class="form-group">
<label for="name">Product Name</label>
<form:input path="name" class="form-control"/>
<form:errors path="name" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="description">Description</label>
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="price">Price</label>
<form:input path="price" class="form-control" />
<form:errors path="price" cssStyle="color:#ff0000"></form:errors>
</div>

<div class="form-group">
<label for="quantity">Quantity</label>
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:#ff0000"></form:errors>
</div>

<%-- <div class="form-group">
<label for="mfg">Mfg Date</label>
<form:input path="mfg" class="form-control"/>
<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
</div> --%>

<div class="form-group">
<label for="category">Category</label>
<!-- List<Category> c =model.getAttribute("categories");
out.println(c.id)
out.println(c.categoryDetails);
 -->
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>
${c.categoryDetails }
</c:forEach>
<%-- <form:errors path="mfg" cssStyle="color:#ff0000"></form:errors> --%>
</div>

<input type="submit" value="Edit Product" class="btn btn-default">
</form:form>

</div>


</div>
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Spring MVC Form Handling</title>
 </head>
 <body>
  <h2>Add Product Data</h2>
  <form:form method="POST" action="./updateProduct" commandName="prdfrm">
      <table>
       <tr>
           <td><form:label path="id">Product ID:</form:label></td>
           <td><form:input path="id" value="${prod.id}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" value="${prod.name}"/></td>
       </tr>
       <tr>
           <td><form:label path="description">Product Description:</form:label></td>
           <td><form:input path="description" value="${prod.description}"/></td>
       </tr>
       <tr>
           <td><form:label path="price">Product price:</form:label></td>
           <td><form:input path="price" value="${prod.price}"/></td>
       </tr>
       
       
          <tr>
         <td colspan="2"><input type="submit" value="Update"/></td>
        </tr>
   </table> 
 </form:form>
 
 </body>
</html> --%>