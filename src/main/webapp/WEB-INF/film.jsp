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
	<c:if test="${! empty film }">
		<table>
		<tr>

			<tr>
				<td><pre><b>Film ID:</b> ${film.id }</pre></td>
				<td><pre><b>Title:</b> ${film.title }</pre></td>
				<td><pre><b>Description:</b> ${film.description }</pre></td>
				<td><pre><b>Release Year:</b> ${film.releaseYear }</pre></td>
			<tr>

		</table>
		<tr>
	</c:if>
	<br>
	<c:if test="${! empty film }">
		<h3>No such film found.</h3>
	</c:if>
	
	
	<%@ include file="bootstrapfooter.jsp" %>
</body>
</html>