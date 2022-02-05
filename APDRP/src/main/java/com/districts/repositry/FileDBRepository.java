package com.districts.repositry;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.districts.model.FileDB;





@Repository
public interface FileDBRepository extends JpaRepository<FileDB, String> {

	@Query(value="select max(sl_no) from dpr_gazettes",nativeQuery = true)
	Long getSlno();
}
