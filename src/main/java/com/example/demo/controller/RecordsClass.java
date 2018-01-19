package com.example.demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;


@RestController
public class RecordsClass {
	@Autowired
	EmployeeRepository emp;
	
	@RequestMapping(value="/{id}" ,method=RequestMethod.GET)
	public ModelAndView editEmp(@PathVariable("id") long id){
		
		
		System.out.println(id);
		
		return new ModelAndView("editMember","employee",emp.findOne(id));
	}
	@RequestMapping(value="/edited", method=RequestMethod.POST)
	public ModelAndView editUser(@Valid @ModelAttribute("employee")Employee employee, 
			  BindingResult result,  ModelMap model){
		System.out.println(employee.getCity());
		emp.save(employee);
		return new ModelAndView("member","employee",employee);
	}
	@RequestMapping(value="/deleted",method=RequestMethod.POST)
	public ModelAndView deleteEmp(@Valid @ModelAttribute("employee")Employee employee,
			  BindingResult result,  ModelMap model){
		Employee temp = emp.findOne(employee.getId());
		emp.delete(employee.getId());
		
		return new ModelAndView("member","employee",temp);
	}
	@RequestMapping(value="/saved", method=RequestMethod.POST)
	public ModelAndView submitUser(@Valid @ModelAttribute("employee")Employee employee, 
			  BindingResult result,  ModelMap model){
		System.out.println(employee.getCity());
		emp.save(employee);
		return new ModelAndView("member","employee",employee);
	}
	@GetMapping("/all")
	public ModelAndView allEmployees(){
		
		return new ModelAndView("allEmployess","allEmployees",emp.findAll());
	}
	@RequestMapping(method=RequestMethod.GET)
	public ModelAndView getUser(){
		
		return new ModelAndView("members","employee",new Employee());
	}
	
	@RequestMapping("/delete")
	public ModelAndView delUser(){
		return new ModelAndView("deleteUser","employee",new Employee());
	}
}
