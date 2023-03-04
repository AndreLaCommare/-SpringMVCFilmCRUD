package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller 
public class FilmController {

	@Autowired
	private FilmDAO filmDao;
	
	@RequestMapping(path = {"/",  "home.do"})
	public String goHome(Model model) {
		Film TEST = filmDao.findFilmById(1);
		model.addAttribute("TESTFILM", TEST);
		return "home";
	}
	
	@RequestMapping(path = "GetFilmData.do", params = "id", method = RequestMethod.GET)
	public ModelAndView findFilmByID(int id) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.findFilmById(id);
		mv.addObject("film", film);
		mv.setViewName("home");
		return mv;
	}
	
	
	@RequestMapping(path = "addNewFilm.do", method = RequestMethod.POST)
	public ModelAndView addNewFilm(Film film, RedirectAttributes redir) {
		
		filmDao.createFilm(film);
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("film", film);
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(path = "DeleteFilm.do")
	public ModelAndView deleteFilm(@RequestParam int id) {
		boolean isDeleted = filmDao.deleteFilm(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", isDeleted);
		mv.setViewName("deleted");
		return mv;
		
	}
	
	@RequestMapping(path = "UpdateFilm.do")
	public ModelAndView updateFilm(Film film, RedirectAttributes redir) {
		
		filmDao.updateFilm(film.getId(), film );
		ModelAndView mv = new ModelAndView();
		redir.addFlashAttribute("film", film);
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(path = "UpdateFilmForm.do", method=RequestMethod.GET)
	public ModelAndView updateFilmForm(@RequestParam int id) {
		Film film = filmDao.findFilmById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("film", film);
		mv.setViewName("updateFilm");
		return mv;
	}
	
	
	
	
}
 