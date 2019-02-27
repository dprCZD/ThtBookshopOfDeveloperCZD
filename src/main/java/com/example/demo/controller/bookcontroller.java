package com.example.demo.controller;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.bean.Books;
import com.example.demo.service.BookService;

@Controller
public class bookcontroller {
	@Autowired 
	private BookService bookService;
	List<Books> book=new LinkedList<Books>(); 

	@RequestMapping("/login")
	public  String login() {
		return "login";
	}
	@RequestMapping("/register")
	public  String register() {
		return "register";
	}
	@RequestMapping("/java")
	public String Java(Model model)
	{
		return Delbk(model,"java");
		
	}
	@RequestMapping("/Cplus")
	public String Cplus(Model model)
	{
		System.out.println("C++");
		return Delbk(model,"Cplus");
		
	}
	@RequestMapping("/python")
	public String Python(Model model)
	{
		return Delbk(model,"python");
		
	}
	@RequestMapping("/html5")
	public String Html(Model model)
	{
		return Delbk(model,"html");
		
	}
	public  String Delbk(Model model,String url) 
	{
		if(book.isEmpty())
			book=(List)bookService.getAll();
		List <Books>temp=new LinkedList<Books>();
		Iterator iter=book.iterator();
		while(iter.hasNext())
		{
			Books tema=(Books)iter.next();
			//System.out.println((().getKind());
			if(tema.getKind().equals(url))
			{temp.add(tema);
			//System.out.println(tema.getKind());
			}
		}
		
		model.addAttribute("books", temp);
		if(url.equals("search"))
			return"search";
		return "forward:/"+url+"deal";
	}
	
}
