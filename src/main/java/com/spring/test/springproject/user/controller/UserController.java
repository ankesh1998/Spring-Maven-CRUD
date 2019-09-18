package com.spring.test.springproject.user.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.test.springproject.user.dao.UserDaoImpl;
import com.spring.test.springproject.user.entity.User;

@Controller
public class UserController {

	@Autowired
	private UserDaoImpl dao;

	@RequestMapping("/register")
	public String showRegister(Model m) {
		 m.addAttribute("user", new User());  
		return "register";
	}

	@RequestMapping(value = "/userRegistration", method = RequestMethod.POST)
	public String register(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, ModelMap model) {
		if (bindingResult.hasErrors()) {
			return "register";
		} else {
			dao.create(user);
			model.addAttribute("result", "User added Successfully");
			return "regResult";
		}
	}

	@RequestMapping("/allUser")
	public ModelAndView getAllUser() {

		List<User> allUser = dao.getAllUser();

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("allUser", allUser);
		modelAndView.setViewName("allEmp");
		return modelAndView;

	}

	@RequestMapping("/edit_user")
	public String getUserById(@RequestParam("prodId") int id, ModelMap model) {
		User user = dao.getUserById(id);
		model.addAttribute("user", user);
		return "edit_user";
	}

	@RequestMapping(value = "/processEditUser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute User user, ModelMap model) {

		dao.updateUser(user);
		List<User> allUser = dao.getAllUser();
		model.addAttribute("allUser", allUser);
		model.addAttribute("result", "User Updated Successfully");
		return "allEmp";
	}

	@RequestMapping("/delete_user")
	public String deleteUser(@RequestParam("prodId") int id, ModelMap model) {
		dao.deleteUser(id);
		List<User> allUser = dao.getAllUser();
		model.addAttribute("allUser", allUser);
		model.addAttribute("result", "User deleted Successfully");
		return "allEmp";
	}

}
