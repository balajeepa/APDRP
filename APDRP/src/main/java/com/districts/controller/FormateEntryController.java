package com.districts.controller;

import java.net.InetAddress;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.districts.entity.Formateone;
import com.districts.repositry.FormateEntry;
import com.districts.service.FormateEntryService;
 
@Controller
public class FormateEntryController {

	@Autowired
	private FormateEntry ferep;
	
	@Autowired
	private FormateEntryService formateEntryService;
	
	@GetMapping("/FormatsEntry")
	public String getOtsDetails(Model model) {
		
	 
		System.out.println("123");
		
	 
		model.addAttribute("formateone", new Formateone());
		
		model.addAttribute("actslist",  ferep.findAllActs());
	 
		return "com.FormatsEntry";

	}
	
	
	@PostMapping("/FormatsEntry")
	public String submitDetails(@ModelAttribute("formateone") Formateone formateone, BindingResult bindingResult, HttpServletRequest request) {
		System.out.println("submission");
		
		System.out.println(("Insert"));
	

		System.out.println(request.getRemoteAddr());
		System.out.println(formateone.getSlno());
		System.out.println(formateone.getProvisions());
		System.out.println(formateone.getRule_name());
		System.out.println(formateone.getReasons_for_deletion());
		System.out.println(formateone.getSections());
		 formateone.setProposed_text("1");
		formateone.setReasons_for_incorporation("2");
		formateone.setRule_repealed("3");
		formateone.setReasons_for_repealed ("4");
		formateone.setInserted_by("5");
	    Timestamp date = Timestamp.valueOf("2018-11-12 01:02:03.123456789");

	 formateone.setSlno(ferep.findIdValue() );
			
		formateone.setInserted_time(date);
		formateone.setIncorporation("7");
		formateone.setRepeal("8");
		formateone.setDeletion("9");
		formateone.setSpecify_rule_if_other("10");
		
		formateone.setInserted_ip(null); 
		
		formateEntryService.insert(formateone); 
		 System.out.println( ""); 
		return "com.FormatsEntry";

	}
	
	
 
}
