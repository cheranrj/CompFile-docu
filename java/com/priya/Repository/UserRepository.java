package com.priya.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.priya.model.User;
import com.priya.model.complaint;




public interface UserRepository extends JpaRepository<User, Long> {

	public User findByEmailAndPassword(String emailId, String password);

	public User findByEmail(String emailId);
	
	
	

	
}
