<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Welcome</title>
									<!-- Bootstrap Command -->										
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
    
</head>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: auto;
      margin: auto;
  }
  </style>
<body>	
                   								
									<!-- Header tab Command -->
							
		                          <%@ include file="Header.jsp" %>	

	
    
    <div class="container-fluid-full">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value='/resource/images/IPHONE-6-APPLE-WATCH.jpg' />"  style="margin-top:30px;width:100%;height:auto;" />
        <div class="carousel-caption">
        </div>
      </div>

      <div class="item">
      <img src="<c:url value='/resource/images/maxresdefault_(2).jpg' />"  style="margin-top:30px;width:100%;height:auto;" />
     <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
      <img src="<c:url value='/resource/images/iOS8-APPLE-a (1).jpg' />"  style="margin-top:30px;width:100%;height:auto;" />
      <div class="carousel-caption">
         
        </div>
      </div>
      
      <div class="item">
      <img src="<c:url value='/resource/images/IPAD-AIR-2-IPAD-MINI-3.jpg' />"  style="margin-top:30px;width:100%;height:auto;" />
      <div class="carousel-caption">
         
        </div>
      </div>
      
      <div class="item">
      <img src="<c:url value='/resource/images/iphone-6-1 (3).png' />"  style="margin-top:30px;width:100%;height:auto;" />
      <div class="carousel-caption">
         
        </div>
      </div>
      
      <div class="item">
      <img src="<c:url value='/resource/images/smartwatch.jpg' />"  style="margin-top:30px;width:100%;height:auto;" />
      <div class="carousel-caption">
         
        </div>
      </div>
     
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

       									<!-- Footer tab Command -->
							 		
		                           <%@ include file="Footer.jsp" %>	
 		
  						<!-- Placed at the end of the document so the pages load faster -->
    
  					<script src="<c:url value='/resource/js/bootstrap.min.js' />" /></script>

</body>
</html>