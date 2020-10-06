package com.stradtkt.todoapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/todo")
public class TodoController {
	@RequestMapping("/")
	public String home(Model model) {
		return "index";
	}
}


