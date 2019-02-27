package com.example.demo.service;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.demo.bean.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {

	// 注入UserRepository
	@Autowired 
	private UserRepository userRepository;

	/**
	 * save,update ,delete 方法需要绑定事务. 使用@Transactional进行事务的绑定.
	 * 
	 * 保存对象
	 * @param User
	 * @return 包含自动生成的id的User对象        
	 */
	@Transactional
	public User save(User User) {
		
		return userRepository.save(User);
	}

	/**
	 * 根据id删除对象
	 * 
	 * @param id
	 */
	@Transactional
	public void delete(int id) {
		userRepository.deleteById(id);
		
	}
	//public List<User> getByNE(String testid)
	//{
	//	return userRepository.findByUser(testid, testid);
	//}
	/**
	 * 查询所有数据
	 * 
	 * @return 返回所有User对象
	 */
	public Iterable<User> getAll() 
	{
		return userRepository.findAll();
	}
	
	/**
	 * 根据id查询数据
	 * 
	 * @return  返回id对应的User对象
	 */
	public User getById(Integer id) {
		// 根据id查询出对应的持久化对象
		Optional<User> op = userRepository.findById(id);
		if(op.isPresent())
			return op.get();
		else
			return null;
		
		}
	/**
	 * 修改用户对象数据，持久化对象修改会自动更新到数据库
	 * 
	 * @param user
	 */
	public User getByLGN(String LoginName)
	{
		User temp=userRepository.findByUser(LoginName);
		return temp;
	}
	@Transactional
	public void update(User user){

	// 先根据要修改的对象id查询出对应的持久化对象

	User sessionUser = userRepository.findById(user.getId()).get();

	// 直接调用持久化对象的set方法修改对象的数据

	sessionUser.setBooknum(user.getBooknum());

	sessionUser.setLEVEL(user.getLevel());
	sessionUser.setMoney(user.getMoney());
	}

}