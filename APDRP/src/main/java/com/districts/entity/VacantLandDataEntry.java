package com.districts.entity;

import java.net.InetAddress;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "fixed_assets_vacant_lands")
public class VacantLandDataEntry {
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int slno;                             
	  private String survery_no;                         	
	  private String total_land_extend;                  	
	  private String encumbrance_free_land_extend;        	
	  private String disputed_land_extend;             	
	  private String dispute_nature;                   	
	  private String dispute_status;                  	
	  private String revenue_division;                	
	  private String mandal;                       	
	  private String parliament_constituency;           	
	  private String  assembly_constituency;               	
	  private String remarks;                          	
	  private String inserted_by;                      	
	  private Timestamp inserted_time;                      	
	  private String inserted_ip;                        	
	  private String district;                          	
	  private String village;                          	
	  private String dept_id;                          	
	  private String encumbrance_free_land_extend_scale;
	  
	  private String revenue_district_name;
	  private String revenue_district_id;
	  private String mandal_id;
	  private String mandal_name;
	  private String district_id;
	  public String getMandal_id() {
		return mandal_id;
	}
	public void setMandal_id(String mandal_id) {
		this.mandal_id = mandal_id;
	}
	public String getMandal_name() {
		return mandal_name;
	}
	public void setMandal_name(String mandal_name) {
		this.mandal_name = mandal_name;
	}
	public String getDistrict_id() {
		return district_id;
	}
	public void setDistrict_id(String district_id) {
		this.district_id = district_id;
	}
	public String getRevenue_district_name() {
		return revenue_district_name;
	}
	public void setRevenue_district_name(String revenue_district_name) {
		this.revenue_district_name = revenue_district_name;
	}
	public String getRevenue_district_id() {
		return revenue_district_id;
	}
	public void setRevenue_district_id(String revenue_district_id) {
		this.revenue_district_id = revenue_district_id;
	}
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
	public String getTotal_land_extend() {
		return total_land_extend;
	}
	public void setTotal_land_extend(String total_land_extend) {
		this.total_land_extend = total_land_extend;
	}
	public String getEncumbrance_free_land_extend() {
		return encumbrance_free_land_extend;
	}
	public void setEncumbrance_free_land_extend(String encumbrance_free_land_extend) {
		this.encumbrance_free_land_extend = encumbrance_free_land_extend;
	}
	public String getDisputed_land_extend() {
		return disputed_land_extend;
	}
	public void setDisputed_land_extend(String disputed_land_extend) {
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
	public String getInserted_ip() {
		return inserted_ip;
	}
	public void setInserted_ip(String inserted_ip) {
		this.inserted_ip = inserted_ip;
	}
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
	public String getDept_id() {
		return dept_id;
	}
	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}
	public String getEncumbrance_free_land_extend_scale() {
		return encumbrance_free_land_extend_scale;
	}
	public void setEncumbrance_free_land_extend_scale(String encumbrance_free_land_extend_scale) {
		this.encumbrance_free_land_extend_scale = encumbrance_free_land_extend_scale;
	}
	public String getEncumbrance_free_land_extend_acres() {
		return encumbrance_free_land_extend_acres;
	}
	public void setEncumbrance_free_land_extend_acres(String encumbrance_free_land_extend_acres) {
		this.encumbrance_free_land_extend_acres = encumbrance_free_land_extend_acres;
	}
	public String getEncumbrance_free_land_extend_sqyards() {
		return encumbrance_free_land_extend_sqyards;
	}
	public void setEncumbrance_free_land_extend_sqyards(String encumbrance_free_land_extend_sqyards) {
		this.encumbrance_free_land_extend_sqyards = encumbrance_free_land_extend_sqyards;
	}
	public String getDisputed_land_extend_scale() {
		return disputed_land_extend_scale;
	}
	public void setDisputed_land_extend_scale(String disputed_land_extend_scale) {
		this.disputed_land_extend_scale = disputed_land_extend_scale;
	}
	public String getDisputed_land_extend_acres() {
		return disputed_land_extend_acres;
	}
	public void setDisputed_land_extend_acres(String disputed_land_extend_acres) {
		this.disputed_land_extend_acres = disputed_land_extend_acres;
	}
	public String getDisputed_land_extend_sqyards() {
		return disputed_land_extend_sqyards;
	}
	public void setDisputed_land_extend_sqyards(String disputed_land_extend_sqyards) {
		this.disputed_land_extend_sqyards = disputed_land_extend_sqyards;
	}
	public String getTotal_land_extend_acres() {
		return total_land_extend_acres;
	}
	public void setTotal_land_extend_acres(String total_land_extend_acres) {
		this.total_land_extend_acres = total_land_extend_acres;
	}
	public String getTotal_land_extend_sqyards() {
		return total_land_extend_sqyards;
	}
	public void setTotal_land_extend_sqyards(String total_land_extend_sqyards) {
		this.total_land_extend_sqyards = total_land_extend_sqyards;
	}
	public String getDistance_from_rev_hq() {
		return distance_from_rev_hq;
	}
	public void setDistance_from_rev_hq(String distance_from_rev_hq) {
		this.distance_from_rev_hq = distance_from_rev_hq;
	}
	private String encumbrance_free_land_extend_acres; 	
	  private String encumbrance_free_land_extend_sqyards;	
	  private String disputed_land_extend_scale;       	
	  private String disputed_land_extend_acres;       	
	  private String disputed_land_extend_sqyards;       	
	  private String total_land_extend_acres;         	
	  private String total_land_extend_sqyards;          	
	  private String distance_from_rev_hq;             	
	

}
