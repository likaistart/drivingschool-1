package com.df.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Register")
public class RegisterController {
	@RequestMapping("/toregister")
	public ModelAndView toregister(){
		ModelAndView mv = new ModelAndView("/register/register");
		return mv;
	}
}
