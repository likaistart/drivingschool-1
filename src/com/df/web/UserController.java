package com.df.web;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.df.service.UserService;

//import com.gx.page.Page;
//import com.gx.po.AttributePo;
//import com.gx.po.CommodityPo;
//import com.gx.po.StayRegisterPo;
//import com.gx.po.UserPo;
//import com.gx.service.StayRegisterService;

@Controller
@RequestMapping("/User")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/tolist")
	public ModelAndView list( ){
		ModelAndView mv=null;
		
		return mv;
	}

}
