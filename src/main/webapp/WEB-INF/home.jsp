<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Site</title>
</head>
<body>
<c:choose>
    <c:when test="${! empty film}">
  
      <ul>
        <li>Film ID: ${film.id}</li>
        <li>Film Title: ${film.title}</li>
        <li>Film Description: ${film.description}</li>
        <li>Release Year: ${film.releaseYear}</li>
        <li>Language/ Language ID: ${film.langName} | ${film.lang_id}</li>
        <li>Rental Duration: ${film.duration}</li>
        <li>Rental Rate: ${film.rentalRate}</li>
        <li>Length: ${film.length}</li>
        <li>Replacement Cost: ${film.replacementCost}</li>
        <li>Rating: ${film.rating}</li>
        <li>Special Features: ${film.specialFeatures}</li>
      </ul>
    	
    	
    </c:when>
    <c:otherwise>
      <p>No film found</p>
    </c:otherwise>
  </c:choose>
</body>
</html>