package com.districts.repositry;


import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.districts.entity.Formateone;

 

public interface FormateEntry    extends JpaRepository<Formateone, Integer> {
	
	 List<Formateone> findAll();
	 
	 @Query(value ="SELECT  nextval('public.format1_data_entry_slno_seq')", nativeQuery =   true) 
	  int  findIdValue();
	 
	@Query(value ="select id,act from acts", nativeQuery =   true) 
	List<Map<String,String> > findAllActs();
	
 

}
