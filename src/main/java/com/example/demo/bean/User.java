package com.example.demo.bean;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
// 用于标记持久化类,Spring Boot项目加载后会自动根据持久化类建表
@Table(name="tb_user")
public class User implements Serializable{

	private static final long serialVersionUID = 1L;
	
	/**C
	 * 使用@Id指定主键. 使用代码@GeneratedValue(strategy=GenerationType.AUTO)
	 * 指定主键的生成策略,mysql默认的是自增长。
	 * 
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;// 主键.
	private String username;// 姓名 username
	private String loginName;//昵称
	private String sex;// 性别
	private int age; // 年龄
	private String job;//工作
	private String email;//电子邮件
	private String urgentperson;//紧急联系人
	private String phone;//电话
	private String idcard;//身份证号
	private String pwd;//密码
	private int money;//书币
	private int booknum;//拥有书籍数
	private String level="user";//区分管理员与普通用户
	@ManyToMany
	@JoinTable(                                
            name="books_users",                    //中间表的名字
            joinColumns= {@JoinColumn(name="id")},        //外键的字段
            inverseJoinColumns= {@JoinColumn(name="bid")})    //反转控制字段的名字
	private Set<Books> book=new HashSet<Books>(); //拥有书籍对象
	
	public Set<Books> getBook()
	{
		return book;
	}
	public void setBook(Set<Books> book)
	{
		this.book=book;
	}
	public int getId() {
		return id;
	}
	public void setJob(String job)
	{
		this.job=job;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money)
	{
		this.money=money;
	}	
	public int getBooknum() {
		return booknum;
	}
	public void setBooknum(int booknum)
	{
		this.booknum=booknum;
	}
	public String getJob()
	{
		return job;
	}
	
	public void setEmail(String email)
	{
		this.email=email;
	}
	public String getEmail()
	{
		return email;
	}
	public void setUrgentperson(String urgp)
	{
		this.urgentperson=urgp;
	}
	public String getUrgentperson()
	{
		return urgentperson;
	}
	public void setPhone(String pho)
	{
		this.phone=pho;
	}
	public String getPhone()
	{
		return phone;
	}
	public void setPwd(String pwd)
	{
		this.pwd=pwd;
	}
	public String getPwd()
	{
		return pwd;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getSex() {
		return sex;
	}
	public void setIdcard(String idcard)
	{
		this.idcard=idcard;
	}
	public String getIdcard()
	{
		return idcard;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getLevel()
	{
		return level;
	}
	public void setLEVEL(String sex) {
		this.level = sex;
	}
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}