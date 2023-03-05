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

    <c:when test="${! empty keyword}">
  	
  	<c:forEach items="${keyword }" var="film" >
      <ul>
        <li>Film ID: ${film.id}</li>
        <li>Film Title: ${film.title}</li>
        <li>Film Description: ${film.description}</li>
        <li>Release Year: ${film.releaseYear}</li>
        <li>Language: ${film.langName} </li>
        <li>Rental Duration: ${film.duration}</li>
        <li>Rental Rate: ${film.rentalRate}</li>
        <li>Length: ${film.length}</li>
        <li>Replacement Cost: ${film.replacementCost}</li>
        <li>Rating: ${film.rating}</li>
        <li>Special Features: ${film.specialFeatures}</li>
        <li>Category: ${film.category}</li>
        <li>Cast: ${film.cast.toString().replace("[", "").replace("]", " ").replace("Actor Name:", "")}</li>
      </ul>
   <a href="DeleteFilm.do?id=${film.id }">Delete Current Film</a>
   <a href="UpdateFilmForm.do?id=${film.id }">Update Current Film</a>
    <a href="index.html">Return to Menu</a>
   
  	</c:forEach>
    	
    </c:when>
    
    <c:otherwise>
      <p>No film found</p>
    </c:otherwise>
  </c:choose>
</body>
</html>