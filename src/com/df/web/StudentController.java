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

import com.df.service.CoachService;
import com.df.service.StudentService;
import com.df.domain.Student;
import com.df.domain.User;
import com.df.page.Page;

@Controller
@RequestMapping("/Student")
public class StudentController {

	@Autowired
	private StudentService studentService;

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
		List<Student> students;
		if (txtname == null) {
			txtname = "";
			students = studentService.selectAll();
		}else {
			String nameStr = "%" + txtname + "%";
			students = studentService.selectByName(nameStr);
		}
		// vo.setCurrentPage(currentPage);
		// vo=this.studentService.pageFuzzyselect(txtname, vo);
//		Student stu=studentService.selectByPrimaryKey(1);
////		System.out.print(stu.getName());
//		List<Student> students = new ArrayList<Student>();
//		students.add(stu);
		mv.addObject("list", students);
		mv.addObject("txtname", txtname);
		return mv;
	}
	@RequestMapping("/toadd")
	public ModelAndView toadd(){
		ModelAndView  mv= new ModelAndView("/student/add");
		return mv;
	}
	
	@RequestMapping("/toupdate")
	public ModelAndView toupdate(){
		ModelAndView  mv= new ModelAndView("/student/update");
		return mv;
	}
	
	@RequestMapping(value = "/toupdateStudent", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView toupdateStudent(int userId,String userName,int sex,String signTime,String credentID,String phone,int coachId,String memo){
		System.out.print(userId);
		System.out.print(userName);
		System.out.print(sex);
		
		System.out.print(credentID);
		System.out.print(phone);
		System.out.print(coachId);
		System.out.print(memo);
		
		SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
		Date signtime = new Date();
		try {
			signtime = sdf.parse(signTime);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.print(signtime);
		ModelAndView mv;
		Student record = new Student();
		record.setId(userId);
		record.setName(userName);
		record.setSex(sex);
		record.setSignTime(signtime);
		record.setCredentNo(credentID);
		record.setPhone(phone);
		record.setCoachId(coachId);
		record.setMemo(memo);
		if(studentService.updateByPrimaryKey(record) == 1) {
			mv = new ModelAndView("/student/student");
		}else {
			mv= new ModelAndView("/student/update");
		}
		return mv;
	}
	
	@RequestMapping(value = "/toaddStudent", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView toaddStudent(int userId,String userName,int sex,String signTime,String credentID,String phone,int coachId,String memo) {
		SimpleDateFormat sdf =   new SimpleDateFormat( "yyyy-MM-dd" );
		Date signtime = new Date();
		try {
			signtime = sdf.parse(signTime);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ModelAndView mv;
		Student record = new Student();
		record.setId(userId);
		record.setName(userName);
		record.setSex(sex);
		record.setSignTime(signtime);
		record.setCredentNo(credentID);
		record.setPhone(phone);
		record.setCoachId(coachId);
		record.setMemo(memo);
		User user = new User();
		user.setUsername(userName);
		if(studentService.insert(record) == 1) {
			mv = new ModelAndView("/student/student");
		}else {
			mv= new ModelAndView("/student/add");
		}
		return mv;
	}

}
