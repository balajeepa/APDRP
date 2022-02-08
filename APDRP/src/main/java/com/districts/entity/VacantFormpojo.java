package com.districts.entity;

import java.net.InetAddress;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.TypeDef;
import org.springframework.web.multipart.MultipartFile;

import com.vladmihalcea.hibernate.type.basic.Inet;
import com.vladmihalcea.hibernate.type.basic.PostgreSQLInetType;


public class VacantFormpojo {
	
	private int slno;  
	
	  private String survery_no;                         	
                  
	private int total_land_extend;                                        
	private int encumbrance_free_land_extend;                             
	private int disputed_land_extend;                                    
	private String dispute_nature;                                       
	private String dispute_status;                                     
	private String revenue_division;                                       
	private String  mandal;                                               
	private String  parliament_constituency;                                
	private String  assembly_constituency;                                      
	private String remarks;                                                
	private String inserted_by;                                               
	private Timestamp inserted_time;                                    	
//	private InetAddress inserted_ip;                                                 
	private String district;                                                  
	private String village ;                                         
	private int dept_id ;                                           
	private String encumbrance_free_land_extend_scale;  
	
	
	/*
	 * public String getPlan_uploads() { return Plan_uploads; } public void
	 * setPlan_uploads(String plan_uploads) { Plan_uploads = plan_uploads; }
	 */
	public int getSlno() {
		return slno;
	}
	public void setSlno(int slno) {
		this.slno = slno;
	}
	public String getSurvery_no() {
		return survery_no;
	}
	public void setSurvery_no(String survery_no) {
		this.survery_no = survery_no;
	}
	public int getTotal_land_extend() {
		return total_land_extend;
	}
	public void setTotal_land_extend(int total_land_extend) {
		this.total_land_extend = total_land_extend;
	}
	public int getEncumbrance_free_land_extend() {
		return encumbrance_free_land_extend;
	}
	public void setEncumbrance_free_land_extend(int encumbrance_free_land_extend) {
		this.encumbrance_free_land_extend = encumbrance_free_land_extend;
	}
	public int getDisputed_land_extend() {
		return disputed_land_extend;
	}
	public void setDisputed_land_extend(int disputed_land_extend) {
		this.disputed_land_extend = disputed_land_extend;
	}
	public String getDispute_nature() {
		return dispute_nature;
	}
	public void setDispute_nature(String dispute_nature) {
		this.dispute_nature = dispute_nature;
	}
	public String getDispute_status() {
		return dispute_status;
	}
	public void setDispute_status(String dispute_status) {
		this.dispute_status = dispute_status;
	}
	public String getRevenue_division() {
		return revenue_division;
	}
	public void setRevenue_division(String revenue_division) {
		this.revenue_division = revenue_division;
	}
	public String getMandal() {
		return mandal;
	}
	public void setMandal(String mandal) {
		this.mandal = mandal;
	}
	public String getParliament_constituency() {
		return parliament_constituency;
	}
	public void setParliament_constituency(String parliament_constituency) {
		this.parliament_constituency = parliament_constituency;
	}
	public String getAssembly_constituency() {
		return assembly_constituency;
	}
	public void setAssembly_constituency(String assembly_constituency) {
		this.assembly_constituency = assembly_constituency;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getInserted_by() {
		return inserted_by;
	}
	public void setInserted_by(String inserted_by) {
		this.inserted_by = inserted_by;
	}
	public Timestamp getInserted_time() {
		return inserted_time;
	}
	public void setInserted_time(Timestamp inserted_time) {
		this.inserted_time = inserted_time;
	}

//	public InetAddress getInserted_ip() {
//		return inserted_ip;
//	}
//
//	public void setInserted_ip(InetAddress inserted_ip) {
//		this.inserted_ip = inserted_ip;
//	}
	 
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public String getEncumbrance_free_land_extend_scale() {
		return encumbrance_free_land_extend_scale;
	}
	public void setEncumbrance_free_land_extend_scale(String encumbrance_free_land_extend_scale) {
		this.encumbrance_free_land_extend_scale = encumbrance_free_land_extend_scale;
	}
	public int getEncumbrance_free_land_extend_acres() {
		return encumbrance_free_land_extend_acres;
	}
	public void setEncumbrance_free_land_extend_acres(int encumbrance_free_land_extend_acres) {
		this.encumbrance_free_land_extend_acres = encumbrance_free_land_extend_acres;
	}
	public int getEncumbrance_free_land_extend_sqyards() {
		return encumbrance_free_land_extend_sqyards;
	}
	public void setEncumbrance_free_land_extend_sqyards(int encumbrance_free_land_extend_sqyards) {
		this.encumbrance_free_land_extend_sqyards = encumbrance_free_land_extend_sqyards;
	}
	public String getDisputed_land_extend_scale() {
		return disputed_land_extend_scale;
	}
	public void setDisputed_land_extend_scale(String disputed_land_extend_scale) {
		this.disputed_land_extend_scale = disputed_land_extend_scale;
	}
	public int getDisputed_land_extend_acres() {
		return disputed_land_extend_acres;
	}
	public void setDisputed_land_extend_acres(int disputed_land_extend_acres) {
		this.disputed_land_extend_acres = disputed_land_extend_acres;
	}
	public int getDisputed_land_extend_sqyards() {
		return disputed_land_extend_sqyards;
	}
	public void setDisputed_land_extend_sqyards(int disputed_land_extend_sqyards) {
		this.disputed_land_extend_sqyards = disputed_land_extend_sqyards;
	}
	public int getTotal_land_extend_acres() {
		return total_land_extend_acres;
	}
	public void setTotal_land_extend_acres(int total_land_extend_acres) {
		this.total_land_extend_acres = total_land_extend_acres;
	}
	public int getTotal_land_extend_sqyards() {
		return total_land_extend_sqyards;
	}
	public void setTotal_land_extend_sqyards(int total_land_extend_sqyards) {
		this.total_land_extend_sqyards = total_land_extend_sqyards;
	}
	public int getDistance_from_rev_hq() {
		return distance_from_rev_hq;
	}
	public void setDistance_from_rev_hq(int distance_from_rev_hq) {
		this.distance_from_rev_hq = distance_from_rev_hq;
	}
	private int  encumbrance_free_land_extend_acres;              
	private int encumbrance_free_land_extend_sqyards;                      
	private String disputed_land_extend_scale  ;                       
	private int disputed_land_extend_acres ;                  
	private int disputed_land_extend_sqyards ;                             
	private int total_land_extend_acres      ;                             
	private int total_land_extend_sqyards ;                                
	private int distance_from_rev_hq  ;                                    
	
	

}

