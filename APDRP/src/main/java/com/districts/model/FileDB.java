package com.districts.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.sun.istack.NotNull;

@Entity
@Table(name = "dpr_gazettes")
public class FileDB {

	@NotNull
	@Id
	@Column(name="sl_no")
	private Long sl_no;

	@Column(name = "file_name")
	private String name;

	@Column(name = "group_name")
	private String group_name;

	@Column(name = "descrption")
	private String descrption;



	public Long getSl_no() {
		return sl_no;
	}

	public void setSl_no(Long sl_no) {
		this.sl_no = sl_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public String getDescrption() {
		return descrption;
	}

	public void setDescrption(String descrption) {
		this.descrption = descrption;
	}

	public FileDB(Long sl_no, String name, String group_name, String descrption) {
		super();
		this.sl_no = sl_no;
		this.name = name;
		this.group_name = group_name;
		this.descrption = descrption;
	}

	public FileDB() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
