package com.df.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/News")
public class NewsController {
	@RequestMapping("/tonews")
	public ModelAndView tonews(){
		ModelAndView mv = new ModelAndView("/news/newsFrontList");
		return mv;
	}
}
