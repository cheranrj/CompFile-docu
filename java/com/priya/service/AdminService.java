package com.priya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.priya.Repository.AdminRepository;
import com.priya.Repository.compRepository;
import com.priya.model.complaint;


@Service
public class AdminService {

	@Autowired
	private compRepository compRepository;
	
	@Autowired
	private AdminRepository adminRepository;
	
	public List<complaint> findAll() {
		// TODO Auto-generated method stub
		return compRepository.findAll();
	}

	public complaint findOne(Long id) {
		
		return compRepository.findOne(id);
	}
	
	/*public void save(String comp, long id) {
		// TODO Auto-generated method stub
		
		System.out.println(comp);
		
		adminRepository.save(comp,id);
		
	}*/

	public complaint findOneById(long id) {
		// TODO Auto-generated method stub
		return adminRepository.findOne(id);
	}

	public void save(complaint comp) {
		// TODO Auto-generated method stub
		
		adminRepository.save(comp);
		
	}

	
	

}
