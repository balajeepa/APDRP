
package com.districts.controller;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.districts.entity.VacantFormpojo;
import com.districts.repositry.VacantLandDataEntryRep;
import com.districts.service.VacantLandDataEntryService;

@Controller
public class VacantLandDataEntryController {

	@Autowired
	private VacantLandDataEntryRep vacant;
	
	@Autowired
	private VacantLandDataEntryService vacantservice;

	@GetMapping("/VacantLandDataEntry")
	public String getVacantLandDataEntry(Model model) {

		model.addAttribute("vacantLandDataEntry", new VacantFormpojo());

		model.addAttribute("revenuelist", vacant.findAllRevDistrict());

		model.addAttribute("mandallist", vacant.findAllMandals());
		
		model.addAttribute("villagelist", vacant.findAllVillages());
		
		model.addAttribute("parlimentlist", vacant.findAllparliament());
		
		model.addAttribute("assemblylist", vacant.findAllAssembly());

		return "com.VacantLandDataEntry";

	}
	
	@PostMapping("/vacantlanddatasubmit")
	  public void savevacantlanddata(@ModelAttribute ("vacantLandDataEntry") VacantFormpojo vacantLandDataEntry,@RequestParam("files") MultipartFile[] files,@RequestParam("imgfiles") MultipartFile[] imgfiles) throws UnknownHostException {
		 List<String> fileNames = new ArrayList<>();
	      
	      Arrays.asList(files).stream().forEach(file -> {
	    	  vacantservice.save(file);
	        fileNames.add(file.getOriginalFilename());
	      });
	      Arrays.asList(imgfiles).stream().forEach(file -> {
	    	  vacantservice.save(file);
	          fileNames.add(file.getOriginalFilename());
	        });
		vacantservice.savevacantlanddata(vacantLandDataEntry); 
	  }
	 

}
