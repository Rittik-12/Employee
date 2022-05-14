package com.cts.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.cts.project.dao.EmployeeDao;
import com.cts.project.model.Employee;

@org.springframework.stereotype.Controller
public class Controller {
	
	//ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
	
			//EmployeeDao dao =(EmployeeDao) context.getBean("edao");
	@Autowired
	EmployeeDao dao;
	
	
			
	@RequestMapping("/home")
	public String getHome() {
		
		return "home";
	}
	
	@RequestMapping(value="/result",method = RequestMethod.POST)
	public ModelAndView getAllEmp() {
		List<Employee> emp = dao.getAllEmployee();				
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("lists", emp);

		return mv;	
	}

	@RequestMapping(value="/resultid",method = RequestMethod.POST)
	public ModelAndView getAllEmpById(@RequestParam("id") String id) {
		
		List<Employee> emp = dao.getAllEmployeeById(Integer.parseInt(id));
		ModelAndView mv = new ModelAndView("resultid");
		mv.addObject("lists", emp);

		return mv;	
	}
	
	@RequestMapping(value="/resulthigh",method = RequestMethod.POST)
	public ModelAndView getAllEmpHighest() {
		
		List<Employee> emp = dao.getEmployeeHighestSal();
		ModelAndView mv = new ModelAndView("resulthigh");
		mv.addObject("lists", emp);

		return mv;	
	}

	@RequestMapping(value="/resultlow",method = RequestMethod.POST)
	public ModelAndView getAllEmpLowest() {
		
		List<Employee> emp = dao.getEmployeeLowestSal();				
		ModelAndView mv = new ModelAndView("resultlow");
		mv.addObject("lists", emp);

		return mv;	
	}

}