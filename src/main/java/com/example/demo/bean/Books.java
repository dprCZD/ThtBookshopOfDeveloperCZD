package com.example.demo.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.Table;
@Entity
@Table(name="tb_books")
public class Books {
	
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bid;// 主键.
	private String name;//书名
	private String author;//作者
	private String image;//图片地址
	private int price;//价格
	private String textarea;//电子书地址
	private String kind;//分类
	private int num;//数量
	public int getId() {
		return bid;
	}
	public void setId(int item)
	{
		this.bid=item;
	}
	public String getName() {
		return name;
	}
	public void setName(String item)
	{
		this.name=item;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String item)
	{
		this.author=item;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String item)
	{
		this.image=item;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int item)
	{
		this.price=item;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int item)
	{
		this.num=item;
	}
	public String getTextarea() {
		return textarea;
	}
	public void setTextarea(String item)
	{
		this.textarea=item;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String item)
	{
		this.kind=item;
	}
}
