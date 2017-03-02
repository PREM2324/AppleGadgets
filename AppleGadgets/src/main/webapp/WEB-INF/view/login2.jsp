<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<html>
<head>
<title>loginform</title>
</head>
<body>

<form name="loginForm" method="post" 
action="<c:url value="/j_spring_security_check"></c:url>">
Enter Username <input type="text" name="j_username"/>
Enter password <input type="password" name="j_password"/>
<input type="submit" value="sumbit"/>
</form>
</body>
</html>