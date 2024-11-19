<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Films</title>
<%@ include file="bootstraphead.jsp"%>
</head>
<body>
	<h4>Film Found</h4>

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
					<td><a href="searchFilms.do?films=${film.title }"></a></td>
					<td>${film.description }</td>
					<td>${film.rating }</td>
					<td>${film.releaseYear }</td>
				<tr>
			</c:forEach>
		</table>
	</c:if>

	<%@ include file="bootstrapfooter.jsp"%>
</body>
</html>