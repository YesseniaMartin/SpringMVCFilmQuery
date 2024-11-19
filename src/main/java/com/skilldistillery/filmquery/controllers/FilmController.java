package com.skilldistillery.filmquery.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.filmquery.database.DatabaseAccessor;
import com.skilldistillery.filmquery.entities.Film;


@Controller
public class FilmController {
private final DatabaseAccessor dao;
//	this injects and instance (Spring Bean) of a DAO
	public FilmController(DatabaseAccessor dao) {
		this.dao = dao;
	}
	
	@RequestMapping(path= {"/", "index.do" })
	public ModelAndView home() {
		Film film = null;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		mv.addObject("film", film);

		return mv;
	}
	@RequestMapping(path= "searchFilms.do", method = RequestMethod.GET)
	public ModelAndView searchFilms(@RequestParam("films") String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = new ArrayList<>();
		try {
			films = dao.searchFilms(keyword);
			mv.addObject("films", films);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		mv.addObject("films", films);
		mv.setViewName("WEB-INF/films.jsp");
		return mv;
	}
	
	@RequestMapping(path= {"findById.do"})
	public ModelAndView findFilmById(@RequestParam("id") int id) {
		 ModelAndView mv = new ModelAndView();
		
			try {
				Film film = dao.findFilmById(id);
				mv.addObject("film", film);
				mv.setViewName("WEB-INF/film.jsp");
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return mv;
	}
	
}
