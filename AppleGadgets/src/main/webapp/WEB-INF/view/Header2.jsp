<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<html>
<head>
							        <!-- Bootstrap Command -->
										
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		    <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />

</head>
<body>
						         <!-- Navigation Bar Command -->
																	
<nav class="navbar navbar-dark navbar-fixed-top" style="background-color:#003366">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Index" style="color:yellow;font-size:25px;font-family:Segoe Script">AppleGadgets</a>
    </div>
    
    <ul class="nav navbar-nav navbar-left">
    <li> <a href="AboutUs" style="color:white"> ABOUT US</a></li>
    
    
    <li><a href="admin/product/productform" style="color:white">PRODUCTS</a></li>
    
    <li><a href="all/product/getAllProducts" style="color:white">BROWSE ALL PRODUCTS</a></li>
    </ul>  
      
   
        <ul class="nav navbar-nav navbar-right">
         <li><a href="Register" style="color:white"><span class="glyphicon glyphicon-user"></span> SIGNUP</a></li>
        </ul>
    
  </div>
</nav>
							<!-- Placed at the end of the document so that page load faster -->

				          <script src="<c:url value='/resource/js/bootstrap.min.js'/>" /></script>
</body>
</html>
    