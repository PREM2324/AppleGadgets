<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<head>
  
  <title>RegistrationPage</title>
  
                              <!-- Bootstrap Command -->										
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <link rel="stylesheet" href="<c:url value='/resource/css/bootstrap.min.css'/>" />
    

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
 <style>
      
      body {
  font-family: "Open Sans", sans-serif;
  height: 100vh;
  background: url("http://i.imgur.com/HgflTDf.jpg") 50% fixed;
  background-size: cover;
}

@keyframes spinner {
  0% {
    transform: rotateZ(0deg);
  }
  100% {
    transform: rotateZ(359deg);
  }
}
* {
  box-sizing: border-box;
}

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
  background: rgba(4, 40, 68, 0.85);
}

.register {
  border-radius: 2px 2px 5px 5px;
  padding: 10px 20px 20px 20px;
  width: 90%;
  max-width: 320px;
  background: #ffffff;
  position: relative;
  padding-bottom: 80px;
  box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.3);
}



.register input {
  display: block;
  padding: 15px 10px;
  margin-bottom: 10px;
  width: 100%;
  border: 1px solid #ddd;
  transition: border-width 0.2s ease;
  border-radius: 2px;
  color: #ccc;
}
.register input + i.fa {
  color: #fff;
  font-size: 1em;
  position: absolute;
  margin-top: -47px;
  opacity: 0;
  left: 0;
  transition: all 0.1s ease-in;
}
.register input:focus {
  outline: none;
  color: #444;
  border-color: #2196F3;
  border-left-width: 35px;
}
.register input:focus + i.fa {
  opacity: 1;
  left: 30px;
  transition: all 0.25s ease-out;
}


.register button {
  width: 100%;
  height: 100%;
  padding: 10px 10px;
  background: #2196F3;
  color: #fff;
  display: block;
  border: none;
  margin-top: 20px;
  position: absolute;
  left: 0;
  bottom: 0;
  max-height: 60px;
  border: 0px solid rgba(0, 0, 0, 0.1);
  border-radius: 0 0 2px 2px;
  transform: rotateZ(0deg);
  transition: all 0.1s ease-out;
  border-bottom-width: 7px;
}

</style>

</head>  
                              

<body>  

                                <!-- Header tab Command -->
							
		                     <%@ include file="Header3.jsp" %>	
                                
  <div class="wrapper">
  <form class="register">
    <p class="title" style="color:#ff3399;font-size:30px;font-family:Gill Sans MT;margin-top:30px">GET REGISTERED</p>
    <input type="text" placeholder="Name" autofocus style="color:green"/>
    <i class="fa fa-user"></i>
    <input type="password" placeholder="Password" style="color:green" />
    <i class="fa fa-key"></i>
    <input type="password" placeholder="MobileNo" style="color:green"/>
    <i class="fa fa-phone"></i>
    <input type="password" placeholder="EmailId" style="color:green"/>
    <i class="fa fa-envelope"></i>
    
    
    
    <button>
      <i class="spinner"></i>
      <span class="state">REGISTER</span>
    </button>
  </form>
 </p>
</div>                        	
                                    <!-- Footer tab Command -->
                                 <%@ include file="Footer.jsp" %>	
  
                   <!-- Placed at the end of the document so the pages load faster -->
    
  					<script src="<c:url value='/resource/js/bootstrap.min.js' />" /></script>
    

</body>
</html>
