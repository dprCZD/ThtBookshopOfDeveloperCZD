package com.example.demo.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.bean.Books;
import com.example.demo.bean.User;
import com.example.demo.service.UserService;
import com.example.demo.service.BookService;
@Controller
//@RequestMapping("/user")
public class Usercontroller {
	// 注入UserService
		@Autowired 
		private UserService userService;
		@Autowired 
		private BookService bookService;
		private User cUser;//创建用户状态，获取用户登录状态
		private User faker;//虚假用户，用于无用户登录状态
		Shoppingcar shoppingcar;//创建购物车
		List<Books> book=new LinkedList<Books>();//用于获取书籍列表，这一步有点问题，过一段时间重构一下，抓取整个列表效率太低
		//List<User>allusers=new LinkedList<User>();
		Usercontroller(){
			faker=new User();
			faker.setId(-999);
			faker.setLEVEL("disable");
			cUser=null;
		
		}
		@RequestMapping("/user/save")
		public String save(HttpServletRequest req)//获取注册信息
		{
			User user=new User();
			String sex=req.getParameter("sex");
			String phone=req.getParameter("phone");
			if(sex=="1")
				user.setSex("女");
			else
				user.setSex("男");
			//user.setId(Integer.parseInt(phone.substring(0, 8)));
			user.setLoginName(req.getParameter("loginname"));
			user.setIdcard(req.getParameter("idcard"));;
			//user.setAge(Integer.parseInt(req.getParameter("loginname")));;
			user.setEmail(req.getParameter("email"));
			user.setJob(req.getParameter("job"));
			user.setPhone(phone);
			user.setPwd(req.getParameter("password"));
			
			user.setUrgentperson(req.getParameter("urgentperson"));
			user.setUsername(req.getParameter("username"));
			user.setBooknum(0);
			user.setMoney(1000);
			cUser=user;
			user=userService.save(user);
			return "forward:/personal";
			
		}
		
		@RequestMapping("/user/login")
		public String login(HttpServletRequest req, Model model)//获取登录信息判断是否可以登录
		{
			String testid=req.getParameter("id");
			boolean test=true;
			if(testid==null)
				return "login";
			 for (int i = testid.length();--i>=0;)
			 {  
		           if (!Character.isDigit(testid.charAt(i)))
		           {
		        	   test=false;
		            }     
		     }

			if(test)
			{
				int id=Integer.parseInt(testid);
				cUser=userService.getById(id);
			}
			else
			{
				cUser=userService.getByLGN(testid);
				/*Iterator iter=allusers.iterator();
				while(iter.hasNext())
				{
					User tema=(User)iter.next();
					//System.out.println((().getKind());
					if(tema.getLoginName().equals(testid)||tema.getEmail().equals(testid))
					{
						cUser=tema;
						break;
					//System.out.println(tema.getKind());
					}
				}*/
			}
			int error=0;
			//System.out.println(cUser.getId()+"aaa");
			if(cUser==null)
			{	
				
				error=-1;
				model.addAttribute("error", error);
				return"login";
			
			}
			if(!cUser.getPwd().equals(req.getParameter("password")))
			{
				//System.out.println(cUser.getPwd());
				//System.out.println(req.getParameter("password"));
				cUser=null;
				error=-2;
				model.addAttribute("error", error);
				return"login";//显示错误问题
			}
			if(cUser.getLevel().equals("disable"))
			{
				cUser=null;
				error=-3;
				model.addAttribute("error", error);
				return"login";//显示错误问题
			}
			req.getSession().setAttribute("user",cUser);
			return "forward:/personal";
		}
		String testlogin(String url,Model model)//测试是否是登录状态
		{
			if(cUser==null)
			{
				model.addAttribute("user",faker);
				
				return url;
			}
			else
			{
				model.addAttribute("user",cUser);
				return url;
			}
		}
		@RequestMapping("/personal")
		public String personal(Model model)//个人首页
		{
			if(book.isEmpty())
				book=(List)bookService.getAll();
			if(shoppingcar==null)
			shoppingcar=new Shoppingcar(book);//创建购物车
			if(cUser!=null)
			{
				model.addAttribute("user",cUser);
				model.addAttribute("books",cUser.getBook());
				return "personal";
			}
			return "login";
		
		}
		@RequestMapping("/index")
		public String index(Model model)//主页
		{

			//faker.setId(999);
			return testlogin("index",model);
		
		}
		@RequestMapping("/loginout")
		public String loginout()//登出
		{
			cUser=null;
			shoppingcar=null;
			return"forward:/index";
		}
		@RequestMapping("/javadeal")
		public String Javadeal(Model model)//java页面
		{

			return testlogin("Java",model);
			
		}
		@RequestMapping("/Cplusdeal")
		public String Cplusdeal(Model model)//C++页面
		{
			System.out.println("C++0012");
			return testlogin("Cplus",model);
			
		}
		@RequestMapping("/pythondeal")
		public String Pythondeal(Model model)//Python
		{

			return testlogin("Python",model);
			
		}
		@RequestMapping("/htmldeal")
		public String htmldeal(Model model)//html页面
		{

			return testlogin("Html",model);
			
		}
		@RequestMapping(value="add",method=RequestMethod.GET)
		public String AddToCar(String bookid,String url)//向购物车添加商品
		{
			int test=Integer.parseInt(bookid);
			Iterator iter=shoppingcar.car.iterator();
			while(iter.hasNext())
			{
				Books tema=(Books)iter.next();
				//System.out.println((().getKind());
				if(tema.getId()==test)
				{
					test=-1;
				//System.out.println(tema.getKind());
				}
			}
			iter=cUser.getBook().iterator();
			while(iter.hasNext())
			{
				Books tema=(Books)iter.next();
				//System.out.println((().getKind());
				if(tema.getId()==test)
				{
					test=-2;
				//System.out.println(tema.getKind());
				}
			}
			if(test!=-1&&test!=-2)
			shoppingcar.AddBook(test);

			return "forward:/"+url;
			
		}
		@RequestMapping(value="remove",method=RequestMethod.GET)
		public String RemoveFromCar(String bookid,String url)//移除商品
		{
			shoppingcar.Remove(Integer.parseInt(bookid));

			return "forward:/"+url;
			
		}
		@RequestMapping(value="Bookinfo",method=RequestMethod.GET)
		public String getBookinfo(String bookid,Model model)//移除商品
		{
			if(book.isEmpty())
				book=(List)bookService.getAll();
			Iterator iter=book.iterator();
			//System.out.println(bookid+"aaa");
			while(iter.hasNext())
			{
				Books tema=(Books)iter.next();
				//System.out.println((().getKind());
				if(tema.getId()==Integer.parseInt(bookid))
				{
				//System.out.println(tema.getName());
				model.addAttribute("book",tema);
				//System.out.println(tema.getKind());
				break;
				}
			}

			return testlogin("bookinfo",model);
			
		}
		@RequestMapping("/Shoppingcar")
		public String GoToShoppingcar(Model model)//移动到购物车
		{
			model.addAttribute("books",shoppingcar.car);
			model.addAttribute("Allprice",shoppingcar.All);
			return testlogin("Shoppingcar",model);
		}
		
		@RequestMapping(value="GetOrder",method=RequestMethod.GET)
		public String GetOrder(String bookid,Model model)//获取订单
		{
			if(!bookid.equals("car"))//区分直接购买或者购物车购买
				shoppingcar.AddBook(Integer.parseInt(bookid));
			model.addAttribute("car",shoppingcar.car);
			model.addAttribute("Allprice",shoppingcar.All);
			model.addAttribute("Booknum",shoppingcar.booknum);
			return testlogin("Order",model);
		}
		@RequestMapping("/buysuccess")
		public String BuyBooks(Model model)
		{
			Iterator iter=shoppingcar.car.iterator();
			Shoppingcar tempcar=new Shoppingcar(book);
			Set Userbooks=cUser.getBook();
			while(iter.hasNext())
		
			{
				Books tempbook=(Books)iter.next();
			Userbooks.add(tempbook);
			tempcar.car.add(tempbook);
			//System.out.println((().getKind());
			}
			tempcar.booknum=shoppingcar.booknum;
			tempcar.All=shoppingcar.All;
			
			cUser.setBook(Userbooks);
			cUser.setMoney(cUser.getMoney()-shoppingcar.All);
			cUser.setBooknum(cUser.getBooknum()+shoppingcar.booknum);
			
			userService.update(cUser);
			model.addAttribute("books",tempcar.car);
			model.addAttribute("Allprice",tempcar.All);
			shoppingcar.RemoveAll();
			return testlogin("Buysuccess",model);
		}
		@RequestMapping("/Search")
		public String Searchbook(Model model,HttpServletRequest req)//搜索书籍
		{
			if(book.isEmpty())
				book=(List)bookService.getAll();

			String item=req.getParameter("item");
			if(item.isEmpty())
			{
				return testlogin("search",model);
			}
			if(book.isEmpty())
				book=(List)bookService.getAll();
			List <Books>temp=new LinkedList<Books>();
			Iterator iter=book.iterator();
			while(iter.hasNext())
			{
				Books tema=(Books)iter.next();
				//System.out.println((().getKind());
				if(tema.getName().contains(item))
				{temp.add(tema);
				//System.out.println(tema.getKind());
				}
			}
			
			model.addAttribute("books", temp);
			if(cUser!=null)
			if(cUser.getLevel().equals("admin"))
				return testlogin("AllBookData",model);
			return testlogin("search",model);
		}
		@RequestMapping("/Searchuser")
		public String Searchuser(Model model,HttpServletRequest req)//搜索书籍
		{
			String item=req.getParameter("username");
			User tema;
			List <User>temp=new LinkedList<User>();
			if(item.isEmpty())
			{
				model.addAttribute("msg", "failed");
				return testlogin("searchUsers",model);
			}

			boolean test=true;
			 for (int i = item.length();--i>=0;)
			 {  
		           if (!Character.isDigit(item.charAt(i)))
		           {
		        	   test=false;
		        	   break;
		            }     
		     }

			if(test)
			{
				int id=Integer.parseInt(item);
				tema=userService.getById(id);
				if(tema!=null)
					temp.add(tema);
			}
			
			User usetemp=userService.getByLGN(item);
			if(usetemp!=null)
				temp.add(usetemp);
			if(temp.isEmpty())
			{
				model.addAttribute("msg", "failed");
				return testlogin("searchUsers",model);
			}
			
			model.addAttribute("allusers", temp);
			return testlogin("AllUserData",model);
		}
		@RequestMapping("/allBookData")
		public String getbookData(Model model)//获取书籍信息
		{
			book=(List<Books>) bookService.getAll();
			model.addAttribute("books",book);
			 return testlogin("AllBookData",model);
		}
		@RequestMapping("/allUserData")
		public String getUserData(Model model)
		{
			List<User> allusers=(List<User>) userService.getAll();
			model.addAttribute("allusers",allusers);
			 return testlogin("AllUserData",model);
		}
		@RequestMapping(value="Deletebook",method=RequestMethod.GET)
		public String Deletebook(String bookid,Model model)
		{
			bookService.delete(Integer.parseInt(bookid));
			 return "forward:/allBookData";
		}
		@RequestMapping(value="BanUser",method=RequestMethod.GET)
		public String BanUser(String userid,Model model)//管理员封禁用户
		{
			User temp=userService.getById(Integer.parseInt(userid));
			temp.setLEVEL("disable");
			userService.update(temp);
			 return "forward:/allUserData";
		}
		@RequestMapping(value="reBanUser",method=RequestMethod.GET)
		public String reBanUser(String userid,Model model)
		{
			User temp=userService.getById(Integer.parseInt(userid));
			temp.setLEVEL("user");
			userService.update(temp);
			 return "forward:/allUserData";
		}
		@RequestMapping("/addbooktosql")
		public String addBooks(Model model)
		{
			return testlogin("addBooks",model);
		}
		@RequestMapping("/addNewBook")
		public String addNewBook(HttpServletRequest req,Model model)//添加新书
		{
			boolean test=true;
			Iterator iter=book.iterator();
			while(iter.hasNext())
			{
				Books tema=(Books)iter.next();
				//System.out.println((().getKind());
				if(tema.getName().equals(req.getParameter("bookname")))
				{
					test=false;
					break;
				//System.out.println(tema.getKind());
				}
			}
			if(test==false)
			{
				model.addAttribute("msg", "failed");
				return testlogin("addBooks",model);
			}
			Books tempbook=new Books();
			tempbook.setAuthor(req.getParameter("author"));
			tempbook.setName(req.getParameter("bookname"));
			tempbook.setImage(req.getParameter("image"));
			tempbook.setKind(req.getParameter("kind"));
			tempbook.setNum(Integer.parseInt(req.getParameter("num")));
			tempbook.setPrice(Integer.parseInt(req.getParameter("price")));
			tempbook.setTextarea(req.getParameter("textarea"));
			bookService.save(tempbook);
			model.addAttribute("msg", "success");
			return testlogin("addBooks",model);
		}
		@RequestMapping("/searchUsers")
		public String searchUsers(Model model)
		{
			return testlogin("searchUsers",model);
		}
}
