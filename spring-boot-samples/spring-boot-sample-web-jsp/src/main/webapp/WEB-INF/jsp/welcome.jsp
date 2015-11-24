<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<body>
	<h1>Zdravo</h1>
	${message}
	<br>
	Lista:<br>
	<c:forEach items="${imena}" var="name">
		 <c:out value="${name}"></c:out>
		 <br>
	</c:forEach>
	<br>
	Mapa:<br>
	<c:forEach items="${mape}" var="brojevi">
		Key: ${brojevi.key} 
		Value: ${brojevi.value}
		<br>
	
	</c:forEach>
	<br>

	User:
	<br>
	User: ${user}
	<br>
	User name: ${user.name}<br>
	Username: ${user.username}<br>
	Age: ${user.age}<br>
	
	<a href="/next">Next</a>
		
</body>

</html>
