package com.djplat.project.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class boardWriteController {
	@RequestMapping("/boardWrite")
	public String smartEditor() {
		return "board-write";
	}
}