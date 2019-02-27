package com.example.demo.repository;


import com.example.demo.bean.User;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer>{
	
	@Query(value ="SELECT p FROM User p WHERE p.loginName = ?1 OR p.email=?1")
	public User findByUser(String loginName);
}
