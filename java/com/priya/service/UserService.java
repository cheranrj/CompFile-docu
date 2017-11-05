package com.priya.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.priya.Repository.UserRepository;
import com.priya.Repository.compRepository;
import com.priya.form.RegistrationForm;
import com.priya.model.User;
import com.priya.model.complaint;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private compRepository compRepository;

	/*@Autowired
	private EmailUtil emailUtil;*/

	PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	public User findByEmailAndPassword(String email, String password) {
		User hashedPassword = userRepository.findByEmail(email);

		boolean isValid = passwordEncoder.matches(password, hashedPassword.getPassword());

		if (isValid) {
			return userRepository.findByEmailAndPassword(email, hashedPassword.getPassword());
		} else {
			return null;
		}
	}

	public void register(RegistrationForm regUserForm) throws Exception {

		User user = userRepository.findByEmail(regUserForm.getEmail());
		System.out.println("Is email already exists? " + user);

		if (user != null) {
			throw new Exception("Email already exists!!!");
		}

		String hashedPassword = passwordEncoder.encode(regUserForm.getPassword());
		System.out.println(hashedPassword);
		User userObj = new User();
		userObj.setName(regUserForm.getName());
		userObj.setEmail(regUserForm.getEmail());
		userObj.setPassword(hashedPassword);
		userRepository.save(userObj);

			}

	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	public void save(complaint comp) {
		// TODO Auto-generated method stub
		
		System.out.println(comp);
		
		compRepository.save(comp);
		
	}

	public complaint findOne(long id) {
		// TODO Auto-generated method stub
		return compRepository.findOne(id);
	}

	public complaint findByIdAndEmail(Long id, String email) {
		// TODO Auto-generated method stub
		return compRepository.findByIdAndEmail(id,email);
	}

	

}
