package com.example.demo.service;

import java.io.Serializable;
import java.util.Optional;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.bean.Books;
import com.example.demo.bean.User;
import com.example.demo.repository.BookRepository;

@Service
public class BookService {

	// 注入UserRepository
	@Autowired 
	private BookRepository BookRepository;

	/**
	 * save,update ,delete 方法需要绑定事务. 使用@Transactional进行事务的绑定.
	 * 
	 * 保存对象
	 * @param User
	 * @return 包含自动生成的id的User对象        
	 */
	
	@Transactional
	public Books save(Books Book) {
		return BookRepository.save(Book);
	}

	/**
	 * 根据id删除对象
	 * 
	 * @param id
	 */
	@Transactional
	public void delete(int id) {
		BookRepository.deleteById(id);
		
	}

	/**
	 * 查询所有数据
	 * 
	 * @return 返回所有User对象
	 */
	public Iterable<Books> getAll() {
		return BookRepository.findAll();
	}
	
	/**
	 * 根据id查询数据
	 * 
	 * @return  返回id对应的User对象
	 */
	
	public Books getById(Integer id) {
		// 根据id查询出对应的持久化对象
		Optional<Books> op = BookRepository.findById(id);
		return op.get();
	}
	/**
	 * 修改用户对象数据，持久化对象修改会自动更新到数据库
	 * 
	 * @param user
	 */


}