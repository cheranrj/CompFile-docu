package com.priya.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.priya.model.complaint;

public interface AdminRepository extends JpaRepository<complaint, Long>{
	
	
	@Query(value = "update complaints set status = ?1 where id = ?2", nativeQuery = true)
	public complaint save(String comp, long id);

	

}
