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
	<form action="searchFilms.do" method="get">
		<input type="text" name="title"> 
		<input type="submit" placeholder="Enter film title" name="doThis" value="Find">
	</form>
	<c:if test="${! empty films }">
		<table>
			<tr>
				<th>Title</th>
				<th>Description</th>
				<th>Rating</th>
				<th>Release Year</th>
			</tr>
		<c:forEach items="${films }" var="film">
			<tr>
				<td><a href="searchFilms.do?title=${film.title }"></a></td>
				<td>${film.description }</td>
				<td>${film.rating }</td>
				<td>${film.releaseYear }</td>
			<tr>
			</c:forEach>
		</table>
		<tr>
	</c:if>
	
	<%@ include file="bootstrapfooter.jsp" %>
</body>
</html>