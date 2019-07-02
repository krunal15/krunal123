package com.krunalajex.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.krunalajex.dao.UserDao;
import com.krunalajex.model.User;


@Controller
public class UserController {
	
	@Autowired
	UserDao userdao;
	
	@RequestMapping("/index")
	public ModelAndView home() {
	    List<User> listUser = userdao.listAll();
	    ModelAndView mav = new ModelAndView("index");
	    mav.addObject("listUser", listUser);
	    return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("user") User user) {
	    userdao.saveUser(user);
	    return "redirect:/";
	}
	
}
