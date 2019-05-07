package com.df.web;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.df.domain.User;
import com.df.service.UserService;

@Controller
@RequestMapping("/Login")
public class Login {

	@Autowired
	private UserService userService;

	@RequestMapping("/tologin")
	public String tologin() {
		return "/login/login";
	}

	@RequestMapping("/tomain")
	public ModelAndView tomain(User user) {
		ModelAndView mv = null;
		User result = userService.selectUser(user);
		if (Objects.nonNull(result)) {
			mv = new ModelAndView("/main/main");
		} else {
			mv = new ModelAndView("/login/login");
		}
		return mv;
	}
}
