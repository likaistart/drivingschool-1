package com.df.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Main")
public class Main {
	
	@RequestMapping("/todata")
	public String tologin(){
		return "redirect:/Student/tolist.do";
	}
	
	@RequestMapping("/toindex")
	public ModelAndView toindex(){
		ModelAndView mv = new ModelAndView("/main/index");
		return mv;
	}
}
