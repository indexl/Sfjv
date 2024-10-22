package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrHomeController {	
	 
	int i = 0;
	
	@GetMapping("/usr/home/main")
	@ResponseBody
	public String showMain() {
		return "안녕하세요1";
	}
	
	
	@GetMapping("/usr/home/int")
	@ResponseBody
	public int test1() {
		return i++;
	}	
}