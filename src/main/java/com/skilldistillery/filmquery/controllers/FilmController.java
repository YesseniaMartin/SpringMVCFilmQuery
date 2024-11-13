package com.skilldistillery.filmquery.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	@RequestMapping(path= {"searchFilms.do" })
	public ModelAndView searchFilms(@RequestParam("keyword") String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> result = new ArrayList<>();
		try {
			result = dao.searchFilms(keyword);
			mv.addObject("keyword", result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		mv.setViewName("WEB-INF/films.jsp");
		return mv;
	}
	
	@RequestMapping(path= {"findById.do"})
	public ModelAndView findFilmById(@RequestParam("id") int id) {
		 ModelAndView mv = new ModelAndView();
		
			Film film = null;
			try {
				film = dao.findFilmById(id);
				
				mv.setViewName("WEB-INF/film.jsp");
				mv.addObject("film", film);
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
		return mv;
	}
	
}
