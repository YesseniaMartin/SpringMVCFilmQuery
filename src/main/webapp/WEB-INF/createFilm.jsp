<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
<%@ include file="bootstraphead.jsp"%>
</head>
<body>

<h4>Create a New Film</h4>
<c:if test="${!empty message}">
        <p style="color: green;">${message}</p>
    </c:if>
    <c:if test="${!empty createdFilm}">
    <p style="color: green;">Film Created: ${createdFilm.title}</p>
</c:if>

	<form action="createFilm.do" method="POST">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" placeholder="Enter film title" required><br><br>
        
        <label for="description">Description:</label>
        <textarea id="description" name="description" placeholder="Enter film description" required></textarea><br><br>
        
        <label for="releaseYear">Release Year:</label>
        <input type="number" id="releaseYear" name="releaseYear" placeholder="Enter release year" required><br><br>
        
        <label for="languageId">Language ID:</label>
        <input type="number" id="languageId" name="languageId" placeholder="Enter language ID" required><br><br>
     
    	<label for="rentalDuration">Rental Duration:</label>
    	<input type="number" id="rentalDuration" name="rentalDuration" placeholder="Enter rental duration" required><br><br>
    
    	<label for="rentalRate">Rental Rate:</label>
    	<input type="number" step="0.01" id="rentalRate" name="rentalRate" placeholder="Enter rental rate" required><br><br>
    
    	<label for="length">Length:</label>
    	<input type="number" id="length" name="length" placeholder="Enter film length in minutes" required><br><br>
    
    	<label for="replacementCost">Replacement Cost:</label>
    	<input type="number" step="0.01" id="replacementCost" name="replacementCost" placeholder="Enter replacement cost" required><br><br>
    
    	<label for="rating">Rating:</label>
    	<input type="text" id="rating" name="rating" placeholder="Enter film rating" required><br><br>
    
    	<label for="specialFeatures">Special Features:</label>
    	<input type="text" id="specialFeatures" name="specialFeatures" placeholder="Enter special features"><br><br>
    
        <button type="submit">Create Film</button>
    </form>


<%@ include file="bootstrapfooter.jsp"%>
</body>
</html>