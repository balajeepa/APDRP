package com.districts.repositry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.districts.entity.Formateone;

@Repository
public class FormateEntryImpl implements FormateEntryJDBC {

	
	
	@Autowired
    private JdbcTemplate jdbcTemplate;

  

    @Override
    public int save(Formateone fo) {
    	
    	System.out.println( fo.getSlno()+fo.getRule_name()+fo.getSections()+fo.getProvisions()+fo.getReasons_for_deletion());
        return jdbcTemplate.update(
                "insert into format1_data_entry1 (slno,  rule_name ,  sections ,	 provisions , reasons_for_deletion 	) "
                + "values(?,?,?,?,?)",
                fo.getSlno(),fo.getRule_name(),fo.getSections(),fo.getProvisions(),fo.getReasons_for_deletion());
    }
    
}
