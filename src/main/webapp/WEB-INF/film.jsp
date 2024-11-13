<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib uri="jakarta.tags.core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film</title>
</head>
<body>
	<c:if test="${! empty film }">
		<table>
		<tr>
			<c:forEach items="${films }" var="film">
			<tr>
				<td>Title: ${film.title }</td>
				<td>Description: ${film.description }</td>
				<td>Release Year: ${film.releaseYear }</td>
			<tr>
			</c:forEach>
		</table>
		<tr>
	</c:if>
	
	<br>
	
	
	
</body>
</html>