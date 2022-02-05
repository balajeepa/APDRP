package com.districts.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

 
import com.districts.entity.Formateone;
import com.districts.model.Contact;
import com.districts.service.ContactService;
import com.districts.service.FormateEntryService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	@Autowired
	private FormateEntryService formateEntryService;
	
	@Autowired
	private ContactService contactService;
	
//second commit

	//@RequestMapping(value = "/home", method = RequestMethod.GET)
	   @GetMapping({"/", "/home"})
	public String home() {
		return "com.homepage";
	}

	    
	
	@RequestMapping(value = "/committees", method = RequestMethod.GET)
	public String Committees() {
		return "com.committees";
	}
	
	
	@RequestMapping(value = "/userManual", method = RequestMethod.GET)
	public String userManual() {
		return "com.userManual";
	}
	
	@RequestMapping(value = "/goc", method = RequestMethod.GET)
	public String goc() {
		return "com.goc";
	}
	
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus() {
		return "com.contactus";
	}
	
	@RequestMapping(value = "/Login", method = RequestMethod.GET)
	public String Login() {
		return "com.Login";
	}
	
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contactPage() {
		return "com.contactpage";
	}
	

	
	
	
	
	
	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
	@ResponseBody
	public String saveContact(@RequestParam(value = "name") String name,
			@RequestParam(value = "address") String address,
			@RequestParam(value = "phone") String phone/*
														 * HttpServletRequest request
														 */) {
		System.out.println("name : " + name + ", address : " + address + ", phone : " + phone);
		// or using HttpServletRequest, System.out.println("name : " +
		// request.getParameter("name"));
		// create contact object
		Contact contact = new Contact();
		contact.setContactName(name);
		contact.setContactAddress(address);
		contact.setContactPhone(phone);
		// save contact to database
		contactService.saveContact(contact);
		return "Contact successfully saved";
	}
}
