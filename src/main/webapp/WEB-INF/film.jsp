<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="jakarta.tags.core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film</title>
<%@ include file="bootstraphead.jsp" %> 
</head>
<body>
<p>Search for Films:</p>
<c:choose>
	<c:when test="${! empty film }">
		<table>
		<tr>

			<tr>
				<td><td><b>Film ID:</b> ${film.id }</td></td>
				<td><td><b>Title:</b> ${film.title }</td></td>
				<td><td><b>Description:</b> ${film.description }</td></td>
				<td><td><b>Release Year:</b> ${film.releaseYear }</td></td>
			<tr>

		</table>
		<tr>
	</c:when>
    	<c:otherwise>
		<c:if test="${! empty film }">
			<h3>No such film found.</h3>
		</c:if>
		</c:otherwise>
    </c:choose>
	
	
	<%@ include file="bootstrapfooter.jsp" %>
</body>
</html>