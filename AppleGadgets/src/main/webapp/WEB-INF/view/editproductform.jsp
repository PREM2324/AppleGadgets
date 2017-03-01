<%@ include file="Header.jsp" %>
<html>
<head>
<title>Edit Product Form</title>

                                      <!-- Date Picker using JQuery  -->
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

<c:url value="/admin/product/editProduct" var="url"></c:url>
<form:form action="${url }"  commandName="product" enctype="multipart/form-data">

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

<%-- <div class="form-group">
<label for="mfg">Mfg Date</label>
<form:input path="mfg" class="form-control"/>
<form:errors path="mfg" cssStyle="color:#ff0000"></form:errors>
</div> --%>

<div class="form-group">
<label for="mfg" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Manufacturing Date</label>
<form:input path="mfg" class="form-control" type="text" id="datepicker"/>
<form:errors path="mfg" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div> 


<div class="form-group">
<label for="category" style="color:Blue;font-size:15px;font-family:Lucida Sans Unicode">Category</label>
<!-- List<Category> c =model.getAttribute("categories");
out.println(c.id)
out.println(c.categoryDetails); -->
 
<c:forEach var="c" items="${categories}">
<form:radiobutton path="category.id" value="${c.id}"/>
${c.categoryDetails }
</c:forEach>
<form:errors path="category" cssStyle="color:green;font-family:Lucida Sans Unicode"></form:errors>
</div>

<input type="submit" value="EDIT PRODUCT" style="font-family:Lucida Sans Unicode;font-size:15px" class="btn btn-info">
</form:form>

</div>

</div>
</body>
</html>





<%-- 
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div style="color: teal; font-size: 30px">Being Java Guys | User
   Details</div>

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
      <td><a href="editProduct?id=${pd.productid}">Edit</a></td>
      <td><a href="deleteProduct?id=${pd.productid}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>
  <a href="ProductForm">add new product</a>
</center>
</body>
</html> --%>