package com.df.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Notice")
public class NoticeController {
	@RequestMapping("/tonotice")
	public ModelAndView tonotice(){
		ModelAndView mv = new ModelAndView("/notice/noticeFrontList");
		return mv;
	}
}
