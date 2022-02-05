package com.districts.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.districts.entity.Formateone;
import com.districts.model.LoginBean;
import com.districts.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(Model model) {

		model.addAttribute("loginbean", new LoginBean());

		return "com.login";
	}

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String saveContact(@ModelAttribute("loginbean") LoginBean loginBean) {

		System.out.println("loginBean    " + loginBean.getPassword());
		loginBean.setUsername(loginBean.getUsername());
		loginBean.setPassword(loginBean.getPassword());
		int value = loginService.userverification(loginBean);
		System.out.println("valueee---->" + value);
		if (value > 0) {
			return "com.userManual";
		} else {
			return "com.login";
		}
	}

}
