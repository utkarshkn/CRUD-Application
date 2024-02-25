package com.UtkarshNSB.NEW.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Student {

	 @Id
	 private int id;
	 private String name;
	 private String email;
	 private int age;
	 private long mno;
	 
	 @Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", email=" + email + ", age=" + age + ", mno=" + mno + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public long getMno() {
		return mno;
	}
	public void setMno(long mno) {
		this.mno = mno;
	}
	public Student(int id, String name, String email, int age, long mno) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.age = age;
		this.mno = mno;
	}
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}