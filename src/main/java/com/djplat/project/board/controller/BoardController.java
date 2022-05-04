package com.djplat.project.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BoardController {
//	ModelAndView boardList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	@RequestMapping("/board.html")
	public String boardList(Model model) {
		return "boardList";
	}

}
	