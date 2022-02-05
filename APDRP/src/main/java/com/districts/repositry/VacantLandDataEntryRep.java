
package com.districts.repositry;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.districts.entity.VacantLandDataEntry;

@Repository
public interface VacantLandDataEntryRep extends JpaRepository<VacantLandDataEntry, Integer> {

	List<VacantLandDataEntry> findAll();

	
	
	
	@Query(value ="select revenue_district_id,revenue_district_name from revenue_districts", nativeQuery = true)
	List<Map<String,String>> findAllRevDistrict();




	
	
	@Query(value ="select  mandal_id,mandal_name from mandal_master", nativeQuery = true)
	List<Map<String,String>> findAllMandals();
	
	@Query(value ="select  village_id,village_name from village_master", nativeQuery = true)
	List<Map<String,String>> findAllVillages();
	
	
	@Query(value ="select  parliament_id,parliament_name from apdrp_parliament_mst", nativeQuery = true)
	List<Map<String,String>> findAllparliament();
	
	@Query(value ="select  assembly_id,assembly_name from apdrp_assembly_mst", nativeQuery = true)
	List<Map<String,String>> findAllAssembly();
	
	
	/*
	 * @Query(value =
	 * "select revenue_district_id,revenue_district_name from revenue_districts "
	 * ,nativeQuery = true) List<VacantLandDataEntry> findAllRevDistrict();
	 */
	 
	 
	/*
	 * @Query(value
	 * ="SELECT division_id,upper(division_name) as division_name FROM apdrp_revenue_division_mst where district_id='\" + session.getAttribute(\"district_id\") + \"' and division_id='\" + revDivId + \"' order by division_name\", con));"
	 * , nativeQuery = true) List<Map<String,String> > findAllRevDistrict();
	 */

	
	/*
	 * @Query(value = "select  mandal_id,mandal_name from mandal_master",
	 * nativeQuery = true) List<Map<String, String>> findAllMandals();
	 */
	 
	

}
