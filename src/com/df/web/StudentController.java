package com.df.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.df.service.CoachService;
import com.df.service.StudentService;
import com.df.domain.Student;
import com.df.page.Page;

@Controller
@RequestMapping("/Student")
public class StudentController {

	@Autowired
	private StudentService studentService;

	@Autowired
	private CoachService coachService;

	@RequestMapping("/tolist")
	public ModelAndView list(HttpServletRequest request, Integer currentPage, String txtname) {
		ModelAndView mv = null;
		int i = 1;
		int y = i + i;
		mv = new ModelAndView("/student/student");
		if (currentPage == null) {
			currentPage = 1;
		} else if (currentPage == 0) {
			currentPage = 1;
		}
		if (txtname == null) {
			txtname = "";
		}
		// vo.setCurrentPage(currentPage);
		// vo=this.studentService.pageFuzzyselect(txtname, vo);
		// Student students=studentService.selectByPrimaryKey(1);
		List<Student> students = studentService.selectAll();
		mv.addObject("list", students);
		mv.addObject("txtname", txtname);
		return mv;
	}
	
	@RequestMapping("/toadd")
	public ModelAndView toadd(){
		ModelAndView mv= new ModelAndView("/student/add");
		return mv;
	}

}
