package com.example.demo.controller;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.demo.bean.Books;
import com.example.demo.service.BookService;

public class Shoppingcar {
	@Autowired 
	private BookService bookService;
	List<Books>car=new <Books>LinkedList();
	Iterable book;
	int All=0;
	int booknum=0;
	
	Shoppingcar(Iterable book)
	{
		this.book=book;
	}
	void AddBook(int id)
	{
		
		Iterator iter=book.iterator();
		while(iter.hasNext())
		{
			Books tema=(Books)iter.next();
			//System.out.println((().getKind());
			if(tema.getId()==id)
			{car.add(tema);
			//System.out.println(tema.getKind());
			All=All+tema.getPrice();
			booknum++;
			break;
			}
		}
		
	}
	void Remove(int id)
	{
		Iterator iter=car.iterator();
		while(iter.hasNext())
		{
			Books tema=(Books)iter.next();
			//System.out.println((().getKind());
			if(tema.getId()==id)
			{
			car.remove(tema);
			//System.out.println(tema.getKind());
			All=All-tema.getPrice();
			booknum--;
			break;
			}
		}
	}
	void RemoveAll()
	{
		car.clear();
		All=0;
		booknum=0;
	}
}
