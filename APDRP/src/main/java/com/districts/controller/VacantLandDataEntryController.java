/*
 * package com.districts.controller;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping;
 * 
 * import com.districts.entity.Formateone; import
 * com.districts.entity.VacantLandDataEntry; import
 * com.districts.repositry.VacantLandDataEntryRep; import
 * com.districts.service.FormateEntryService;
 * 
 * @Controller public class VacantLandDataEntryController {
 * 
 * @Autowired private VacantLandDataEntryRep vacant;
 * 
 * 
 * 
 * 
 * @GetMapping("/VacantLandDataEntry") public String
 * getVacantLandDataEntry(Model model) {
 * 
 * model.addAttribute("vacantLandDataEntry", new VacantLandDataEntry());
 * 
 * 
 * model.addAttribute("revenuelist", vacant.findAllRevDistrict());
 * 
 * model.addAttribute("mandallist", vacant.findAllMandals());
 * 
 * return "com.VacantLandDataEntry";
 * 
 * 
 * 
 * }
 * 
 * }
 */