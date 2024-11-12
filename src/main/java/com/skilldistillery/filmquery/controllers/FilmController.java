package com.skilldistillery.filmquery.controllers;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.filmquery.database.DatabaseAccessor;
import com.skilldistillery.filmquery.entities.Film;


@Controller
public class FilmController {
private final DatabaseAccessor dao;
	
	public FilmController(DatabaseAccessor dao) {
		this.dao = dao;
	}
	@RequestMapping(path= {"/", "index.do" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/index.jsp");
		
		return mv;
	}
	@RequestMapping(path= {"findById.do"})
	public ModelAndView findFilmById(@RequestParam("id") int id) {
		 ModelAndView mv = new ModelAndView();
		
			Film film = null;
			try {
				film = dao.findFilmById(id);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			mv.setViewName("WEB-INF/film.jsp");
			mv.addObject("film", film);
		
		return mv;
	}
}
