<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>WelcomePage M2I</title>
	<link rel="stylesheet" href="<c:url value="/css/style.css" />">
</head>
<body>
<header>
	<h1><strong><c:out value="${'Hello, the world'}"></c:out></strong></h1>
	<hr>
</header>
<main>
		<p>With JPA / Hibernate :: ${actor.last_name}</p>
	<hr>
	<table>
		<thead>
			<tr>
				<th>Ressource</th><th>URL</th><th>Link</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>WebService Jax-RS</td><td><c:out value="/api/hello"></c:out></td><td><a href="<c:url value="/api/hello" />">GO</a></td>
			</tr>
		</tbody>	
		<tfoot>
		</tfoot>
	</table>
	
	<div>
		<ul>
			<c:forEach items="${actors}" var="actor" varStatus="status">
				<li>N�<c:out value="${ status.count }" /> : <c:out value="${ actor }" /></li>
			</c:forEach>
		
		</ul>
	</div>
</main>

<footer>
<em>(c)2022 - M2i</em>
</footer>

	

</body>
</html>