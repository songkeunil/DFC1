package com.djplat.project.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

public interface BoardController {

	public ModelAndView listArticles(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listArticles2(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listArticles3(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listArticles4(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView listArticles5(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ResponseEntity  addNewArticle(MultipartHttpServletRequest multipartRequest, HttpServletResponse response) throws Exception;
	public ModelAndView viewArticle(@RequestParam("brd_no") int brd_no,
			  HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ResponseEntity modArticle(MultipartHttpServletRequest multipartRequest,  
		    HttpServletResponse response) throws Exception;
	 public ResponseEntity removeArticle(@RequestParam("brd_no") int brd_no,
				  HttpServletRequest request, 
				  HttpServletResponse response) throws Exception;
	

}