<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SDPT Films</title>
<%@ include file="bootstraphead.jsp" %> 
</head>
<body>
<h5> Find Film By ID</h5>

	<form action="findById.do" method="GET">
		<input type="text" name="id" placeholder="Enter film ID"> <input type="submit"
			name="doThis" value="Find">
	</form>
	<h5> Find Film By Title</h5>
	<form action="searchFilms.do" method="GET">
		<input type="text" name="films"> 
		<input type="submit" placeholder="Enter film title" name="doThis"
			value="Find">
	</form>
	
	<table>
		<tr>
			<c:foreach items="${films }" var="film">
				<tr>
					<td><a href="findById.do?id=${film.id }">${film.description }</a></td>
				<tr>
			</c:foreach>
		<tr>
	</table>
	
<%@ include file="bootstrapfooter.jsp" %>
</body>
</html>