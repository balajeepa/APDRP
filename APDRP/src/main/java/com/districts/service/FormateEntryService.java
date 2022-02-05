package com.districts.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.districts.entity.Formateone;
import com.districts.repositry.FormateEntry;
import com.districts.repositry.FormateEntryImpl;
import com.districts.repositry.FormateEntryJDBC;


@Service
public class FormateEntryService {

	
 
	
	@Autowired
	private FormateEntry  ferep;
    
	
	
	public  String  insert(Formateone formateone) {
		// TODO Auto-generated method stub
		   ferep.save(formateone);
		   return "1";
	}
	
	
	
	
}
