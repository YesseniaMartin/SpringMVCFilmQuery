<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SDPT Films</title>
<%@ include file="bootstrapfooter.jsp" %> 
</head>
<body>
	<form action="findById.do">
		<input type="text" name="id"> <input type="submit"
			name="doThis" value="Find">
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