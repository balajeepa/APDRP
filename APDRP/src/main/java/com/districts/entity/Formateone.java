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
import com.vladmihalcea.hibernate.type.basic.Inet;
import com.vladmihalcea.hibernate.type.basic.PostgreSQLInetType;

@Entity
@Table(name = "format1_data_entry")
@TypeDef(
	    name = "ipv4",
	    typeClass = PostgreSQLInetType.class,
	    defaultForType = Inet.class
	)

public class Formateone {
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int slno;  
	@Column(name="rule_name")
	private String   rule_name;       
	private String sections ;
	 private String provisions ;
	 private String reasons_for_deletion ;
	    private String proposed_text ;
	   private String	  reasons_for_incorporation ; 
	   private String rule_repealed ;
	   private String	  reasons_for_repealed ; 
	   private String inserted_by ;
	   private  InetAddress 	  inserted_ip ; 
	   private Timestamp inserted_time ;
	   private String incorporation ;
	   private String repeal ;
	   private String deletion ; 
	   private String	   specify_rule_if_other ; 
	 
	public int getSlno() {
		return slno;
	}
	public void setSlno(int slno) {
		this.slno = slno;
	}
	public String getRule_name() {
		return rule_name;
	}
	public void setRule_name(String rule_name) {
		this.rule_name = rule_name;
	}
	public String getSections() {
		return sections;
	}
	public void setSections(String sections) {
		this.sections = sections;
	}
	 public String getReasons_for_deletion() {
		return reasons_for_deletion;
	}
	public void setReasons_for_deletion(String reasons_for_deletion) {
		this.reasons_for_deletion = reasons_for_deletion;
	}
	 
	public String getProvisions() {
		return provisions;
	}
	public void setProvisions(String provisions) {
		this.provisions = provisions;
	}
 
 public String getProposed_text() {
		return proposed_text;
	}
	public void setProposed_text(String proposed_text) {
		this.proposed_text = proposed_text;
	}
	public String getReasons_for_incorporation() {
		return reasons_for_incorporation;
	}
	public void setReasons_for_incorporation(String reasons_for_incorporation) {
		this.reasons_for_incorporation = reasons_for_incorporation;
	}
	public String getRule_repealed() {
		return rule_repealed;
	}
	public void setRule_repealed(String rule_repealed) {
		this.rule_repealed = rule_repealed;
	}
	public String getReasons_for_repealed() {
		return reasons_for_repealed;
	}
	public void setReasons_for_repealed(String reasons_for_repealed) {
		this.reasons_for_repealed = reasons_for_repealed;
	}
	public String getInserted_by() {
		return inserted_by;
	}
	public void setInserted_by(String inserted_by) {
		this.inserted_by = inserted_by;
	}
	public InetAddress  getInserted_ip() {
		return inserted_ip;
	}
	public void setInserted_ip(InetAddress  inserted_ip) {
		this.inserted_ip = inserted_ip;
	}
	public Timestamp getInserted_time() {
		return inserted_time;
	}
	public void setInserted_time(Timestamp string) {
		this.inserted_time = string;
	}
	public String getIncorporation() {
		return incorporation;
	}
	public void setIncorporation(String incorporation) {
		this.incorporation = incorporation;
	}
	public String getRepeal() {
		return repeal;
	}
	public void setRepeal(String repeal) {
		this.repeal = repeal;
	}
	public String getDeletion() {
		return deletion;
	}
	public void setDeletion(String deletion) {
		this.deletion = deletion;
	}
	public String getSpecify_rule_if_other() {
		return specify_rule_if_other;
	}
	public void setSpecify_rule_if_other(String specify_rule_if_other) {
		this.specify_rule_if_other = specify_rule_if_other;
	}   	
  
}
