package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {

	public Actor findActorById(int actorId);

	public Film findFilmById(int filmId);

	public List<Actor> findActorsByFilmId(int filmId);

	public List<Film> findFilmsByActorId(int actorId);

	public List<Film> findFilmByKeyword(String keyword);

	public Film createFilm(Film film);

	boolean deleteFilm(int filmId);

	public Film updateFilm(int filmID, Film film);
	
	public String categoryName(int filmId);
}
