
package com.districts.service;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.districts.entity.VacantFormpojo;
import com.districts.entity.VacantLandDataEntry;
import com.districts.repositry.VacantLandDataEntryRep;

@Service
public class VacantLandDataEntryService {

	@Autowired
	private VacantLandDataEntryRep vlde;

	public void savevacantlanddata(VacantFormpojo vacantLandDataEntry) throws UnknownHostException {
		
		 
		//String fileName = StringUtils.cleanPath(vacantLandDataEntry.getPlan_uploads().getOriginalFilename());
		InetAddress ip;
        String hostname;
		ip = InetAddress.getLocalHost();
        hostname = ip.getHostName();
        String ipaddress=ip+hostname;
       // vacantLandDataEntry.setInserted_ip(ip);
        VacantLandDataEntry sample=new VacantLandDataEntry();
        //sample.setPlan_uploads(fileName);
        sample.setSurvery_no(vacantLandDataEntry.getSurvery_no());
        sample.setTotal_land_extend(vacantLandDataEntry.getTotal_land_extend());
        sample.setEncumbrance_free_land_extend(vacantLandDataEntry.getEncumbrance_free_land_extend());
        sample.setDisputed_land_extend(vacantLandDataEntry.getDisputed_land_extend());
        sample.setDispute_nature(vacantLandDataEntry.getDispute_nature());
        sample.setDispute_status(vacantLandDataEntry.getDispute_status());
        sample.setRevenue_division(vacantLandDataEntry.getRevenue_division());
        sample.setMandal(vacantLandDataEntry.getMandal());
        sample.setParliament_constituency(vacantLandDataEntry.getParliament_constituency());
        sample.setAssembly_constituency(vacantLandDataEntry.getAssembly_constituency());
        sample.setRemarks(vacantLandDataEntry.getRemarks());
        sample.setInserted_by(vacantLandDataEntry.getInserted_by());
        sample.setInserted_time(vacantLandDataEntry.getInserted_time());
       // sample.setInserted_ip(vacantLandDataEntry.getInserted_ip());
        sample.setDistrict(vacantLandDataEntry.getDistrict());
        sample.setVillage(vacantLandDataEntry.getVillage());
        sample.setDept_id(vacantLandDataEntry.getDept_id());
        sample.setEncumbrance_free_land_extend_scale (vacantLandDataEntry.getEncumbrance_free_land_extend_scale ());
        sample.setEncumbrance_free_land_extend_acres (vacantLandDataEntry.getEncumbrance_free_land_extend_acres ());
        sample.setEncumbrance_free_land_extend_sqyards(vacantLandDataEntry.getEncumbrance_free_land_extend_sqyards());
        sample.setDisputed_land_extend_scale(vacantLandDataEntry.getDisputed_land_extend_scale());
        sample.setDisputed_land_extend_acres(vacantLandDataEntry.getDisputed_land_extend_acres());
        sample.setDisputed_land_extend_sqyards(vacantLandDataEntry.getDisputed_land_extend_sqyards());
        sample.setTotal_land_extend_acres (vacantLandDataEntry.getTotal_land_extend_acres ());
        sample.setTotal_land_extend_sqyards(vacantLandDataEntry.getTotal_land_extend_sqyards());
        sample.setDistance_from_rev_hq(vacantLandDataEntry.getDistance_from_rev_hq());                                  
        
        vlde.save(sample);
	}
	private final Path root = Paths.get("uploads");

	 
	  public void init() {
	    try {
	      Files.createDirectory(root);
	    } catch (IOException e) {
	      throw new RuntimeException("Could not initialize folder for upload!");
	    }
	  }

	  
	  public void save(MultipartFile file) {
		  try {
		    	
		      Files.copy(file.getInputStream(), this.root.resolve(file.getOriginalFilename()));
		    } catch (Exception e) {
		      throw new RuntimeException("Could not store the file. Error: " + e.getMessage());
		    }
	   
	  }

}
