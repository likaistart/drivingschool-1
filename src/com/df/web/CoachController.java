package com.df.web;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.df.domain.Coach;
import com.df.domain.Student;
import com.df.service.CoachService;

@Controller
@RequestMapping("/Coach")
public class CoachController {
	@Autowired
	private CoachService coachService;
	
	@RequestMapping("/tolist")
	public ModelAndView list(HttpServletRequest request, Integer currentPage, String txtname) {
		ModelAndView mv = null;
		int i = 1;
		int y = i + i;
		mv = new ModelAndView("/coach/coach");
		if (currentPage == null) {
			currentPage = 1;
		} else if (currentPage == 0) {
			currentPage = 1;
		}
		if (txtname == null) {
			txtname = "";
		}
		List<Coach> coachs = coachService.selectAll();
		
//		Coach coa= coachService.selectByPrimaryKey(1);
//		List<Coach> coachs = new ArrayList<Coach>();
//		coachs.add(coa);
		mv.addObject("list", coachs);
		mv.addObject("txtname", txtname);
		return mv;
	}
	@RequestMapping("/toadd")
	public ModelAndView toadd(){
		ModelAndView  mv= new ModelAndView("/student/add");
		return mv;
	}
	@RequestMapping(value = "/toaddCoach", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView toaddStudent(int userId,String userName,String coachCard,String credentID,String phone,String memo) {
		ModelAndView mv;
		Coach record = new Coach();
		record.setId(userId);
		record.setName(userName);
		record.setCoachCard(coachCard);
		record.setCredentNo(credentID);
		record.setPhone(phone);
		record.setMemo(memo);
		if(coachService.insert(record) == 1) {
			mv = new ModelAndView("/coach/coach");
		}else {
			mv= new ModelAndView("/coach/add");
		}
		return mv;
	}

}
