<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
    <%@ page isELIgnored="false" %>

<html>
<head>
							        <!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
</head>
<body>
						         <!-- Navigation Bar Command -->
																	
<nav class="navbar navbar-light navbar-fixed-top" style="background-color:#003366">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<c:url value="/Index"></c:url>" style="color:yellow;font-size:25px;font-family:Segoe Script">AppleGadgets</a>
    </div>
    
    <ul class="nav navbar-nav navbar-left">
    <li><a href="<c:url value="/AboutUs"></c:url>" style="color:white"> ABOUT US</a></li>
    <!-- <li> <a href="productform" style="color:white"> PRODUCT FORM</a></li> -->
    
      
    
    <%-- <li><a href="<c:url value="/admin/product/productform"></c:url>" style="color:white">PRODUCTS</a></li> --%>
    
     <c:if test="${pageContext.request.userPrincipal.name !=null }">
   <!-- http://localhost:8080/project1/admin/product/productform -->
   
   <security:authorize access="hasRole('ROLE_ADMIN')">
   <li><a href="${url }" style="color:white">ADD NEW PRODUCT</a></li>
   <li><a href="<c:url value="/admin/product/productform"></c:url>" style="color:white">PRODUCTS</a></li>
   </security:authorize> 
   <li><a href="<c:url value="/all/product/getAllProducts"></c:url>" style="color:white">BROWSE ALL PRODUCTS</a></li>
   
   
   
    </c:if> 
    
    </ul>  
        
    <ul class="nav navbar-nav navbar-right">
    
    <%-- <li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li> --%>
    			
			<c:if test="${pageContext.request.userPrincipal.name ==null }"> 
			
			
      <li><a href="<c:url value="/Register"></c:url>" style="color:white"><span class="glyphicon glyphicon-user"></span> SIGNUP</a></li>
      
      <li> <a href="<c:url value="/everyone/registrationForm"></c:url>" style="color:white">REGISTER</a></li>
      
      <li><a href="<c:url value="/login"></c:url>" style="color:white"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
            
             </c:if> 
             
             <c:if test="${pageContext.request.userPrincipal.name !=null }">
             
             <li><a href="" style="color:yellow">WELCOME  ${pageContext.request.userPrincipal.name }</a></li>
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>" style="color:white">LOGOUT</a></li>
			</c:if>
			
     </ul>
  </div>
</nav>
							<!-- Placed at the end of the document so that page load faster -->

				          <script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>
</body>
</html>