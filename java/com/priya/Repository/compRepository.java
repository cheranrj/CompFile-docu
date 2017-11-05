package com.priya.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.priya.model.complaint;

public interface compRepository extends JpaRepository<complaint, Long>{

	@Query(value = "select * from complaints", nativeQuery = true)
	public List<complaint> findAll();
	
	@Query(value = "select * from complaints where id=?1", nativeQuery = true)
	public complaint findOne(Long id);
	
	@Query(value = "insert into complaints(name,address,district,mobile,email,category,subject,date) values(?1,?2,?3,?4,?5,?6,?7,?8)", nativeQuery = true)
	public complaint save(String comp);

	public complaint findByIdAndEmail(Long id, String email);

	

}
