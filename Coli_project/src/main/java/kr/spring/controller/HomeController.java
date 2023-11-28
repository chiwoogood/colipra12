package kr.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("plan")
	public String plan() {
		return "plan";
	}
	
	@RequestMapping("draw")
	public String draw() {
		return "draw";
	}
	
	@RequestMapping("price")
	public String price() {
		return "price";
	}
}
