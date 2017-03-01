<%@ include file="Header.jsp" %>
<html>
<head>
<title>Product Form</title>

                                    <!--Date Picker using JQuery -->
                  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
                   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
                     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>
$(function(){
$("#datepicker").datepicker();
	format:'YYYY-mm-dd'		
});	
</script>  

</head>

<body style="margin-top:80px;">

<div class="container-wrapper">
<div class="container">

<c:url value="/admin/product/addProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product" enctype="multipart/form-data">  

<%-- <form:form action="/admin/product/addProduct" commandName="product">  --%>

<div class="form-group">
<label for="id"></label>
<form:hidden  path="id"/>
</div>

<div class="form-group">
<label for="name" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Product Name</label>
<form:input path="name" class="form-control"/>
<form:errors path="name" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div>

<div class="form-group">
<label for="description" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Description</label>
<form:input path="description" class="form-control"/>
<form:errors path="description" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div>

<div class="form-group">
<label for="price" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Price</label>
<form:input path="price" class="form-control" />
<form:errors path="price" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div>

<div class="form-group">
<label for="quantity" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Quantity</label>
<form:input path="quantity" class="form-control"/>
<form:errors path="quantity" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div>

<div class="form-group">
<label for="mfg" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Manufacturing Date</label>
<form:input path="mfg" class="form-control" type="text" id="datepicker"/>
<form:errors path="mfg" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div> 

<div class="form-group">
<label for="category" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Category</label>
<c:forEach var="c" items="${categories }">
<form:radiobutton path="category.id" value="${c.id }"/>
${c.categoryDetails }
</c:forEach>
<form:errors path="category" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div>

<div class="form-group">
<label for="image" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode"> Image </label>
<form:input path="image" type="file"/>
</div>

<input type="submit" value="ADD PRODUCT" style="font-family:Lucida Sans Unicode;font-size:15px" class="btn btn-info">
</form:form>
</div>

</div>
</body>
</html>











<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
   <%@page isELIgnored="false" %>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Product Page</title>
 </head>
 <body>
  <h2>Add Product Data</h2>
  <form:form method="POST" action="./saveProduct" commandName="prdfrm">
      <table>
<!--        <tr> -->
           <td><form:label path="productid">Product ID:</form:label></td>
           <td><form:input path="id" value="${product.productid}" readonly="true"/></td>
<!--        </tr> -->
       <tr>
           <td><form:label path="name">Product Name:</form:label></td>
           <td><form:input path="name" /></td>
       </tr>
       <tr>
           <td><form:label path="description">Product Description:</form:label></td>
           <td><form:input path="description"/></td>
       </tr>
       <tr>
           <td><form:label path="price">Product price:</form:label></td>
           <td><form:input path="price" /></td>
       </tr>
       
       
          <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
   </table> 
 
  
   <a type="button" class="btn-success"  href="listProducts">View all products</a>

  <center>


  <c:if test="${!empty productList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>Product Id</td>
     <td>Product Name</td>
   <td>Product Description</td>
   <td>Product Price</td>
   
     <td>Edit</td>
     <td>Delete</td>
    </tr>
    <c:forEach items="${productList}" var="pd">
     <tr
      style="background-color: white; color: black; text-align: center;"
      height="30px">
      
      <td><c:out value="${pd.productid}" />
      </td>
      <td><c:out value="${pd.name}" />
      </td>
      <td><c:out value="${pd.description}" />
      </td>
      <td><c:out value="${pd.price}" />
      </td>
      <td><a href="edit?id=${pd.productid}">Edit</a></td>
      <td><a href="deleteProduct?id=${pd.productid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <a href="ProductForm">add new product</a>
</center>
  
</form:form>
 
 </body>
</html>  --%>