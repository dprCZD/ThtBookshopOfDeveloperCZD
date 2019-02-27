package com.example.demo.repository;



import com.example.demo.bean.Books;
import com.example.demo.bean.User;
import org.springframework.data.repository.CrudRepository;

public interface BookRepository extends CrudRepository<Books, Integer>{

}
