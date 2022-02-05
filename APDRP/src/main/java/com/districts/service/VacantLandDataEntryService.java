package com.districts.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.districts.entity.Formateone;
import com.districts.repositry.FormateEntry;

public class VacantLandDataEntryService {
	
	
	@Autowired
	private FormateEntry  ferep;
    
	
	
	public  String  insert(Formateone formateone) {
		// TODO Auto-generated method stub
		   ferep.save(formateone);
		   return "1";
	}
	

}
