<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
</head>
<body>
  	<form action = "UpdateFilm.do" method="POST">
		<input type="hidden" name="id" value="${film.id }"> <br>
		
		<label for="title">Title</label>
		<input type="text" name="title" value="${film.title }"> <br>
		<label for="description">Description  </label>
		<input type="text" name="description" value="${film.description }"> <br>
		<label for="release_year">Release Year </label>
		<input type="number" name="releaseYear" value="${film.releaseYear }"> <br>
		<label for="language_id">Language ID: </label>
		<input type="number" name="lang_id" value="1"> <br>
		<label for="rental_duration">Rental Duration  </label>
		<input type="number" name="duration" value="${film.duration }" > <br>
		<label for="rental_rate">Rental Rate </label>
		<input type="number" name="rentalRate" value="${film.rentalRate }"> <br>
		<label for="length">Length </label>
		<input type="number" name="length" value="${film.length }"> <br>
		<label for="replacement_cost">Replace Cost </label>
		<input type="number" name="replacementCost" value="${film.replacementCost }"> <br>
		<label for="rating">Rating </label>
		<input type="text" name="rating" value="${film.rating }"> <br>
		<label for="special_features">Special Features </label>
			<input type="checkbox" name="specialFeatures" value ="Deleted Scenes"> Deleted Scenes 
			<input type="checkbox" name="specialFeatures" value ="Commentaries"> Commentaries
			<input type="checkbox" name="specialFeatures" value ="Trailers"> Trailers
			<input type="checkbox" name="specialFeatures" value = "Behind the Scenes"> Behind the Scenes <br>
		<p>Cast: ${film.cast.toString().replace("[", "").replace("]", " ").replace("Actor Name:", "")}</p>
		<input type="submit" value="Update Film" />
		
    </form>


</body>
</html>