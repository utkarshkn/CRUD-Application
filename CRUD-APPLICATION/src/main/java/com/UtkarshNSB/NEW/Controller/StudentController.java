package com.UtkarshNSB.NEW.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.UtkarshNSB.NEW.Entity.Student;


@Controller
public class StudentController {

	@Autowired
	SessionFactory sf;
	
	@RequestMapping("view")
	public String view() {
		return "view";
	}
	
	@RequestMapping("insertPage")
	public String insertPage() {
		return "insert";
	}
	
	@PostMapping("insert")
	public String insert(Student s, Model m) {
		Session ss = sf.openSession();
		Transaction t = ss.beginTransaction();
		Student s1 = ss.get(Student.class, s.getId());
		if(s1==null) {
			ss.save(s);
			t.commit();
			m.addAttribute("successmsg", "Record Inserted Succesfully !!!!");	
			return "insert";
		}else{
			m.addAttribute("errormsg", "Id is already Present !!!!");	
			return "insert";
		}
	}
	
	@RequestMapping("updatePage")
	public String updatePage() {
		return "update";
	}
	
	@RequestMapping("update")
	public String update(int id,  Model m) {
		Session ss = sf.openSession();
		Transaction t = ss.beginTransaction();
		Student s = ss.get(Student.class, id);
		if(s!=null) {
			ss.update(s);
			t.commit();
			m.addAttribute("successmsg", "Record Updated Succesfully !!!!");	
			return "update";
		}else{
			m.addAttribute("errormsg", "Id is Not Present !!!!");	
			return "update";
		}
	}
	
	@RequestMapping("deletePage")
	public String deletePage() {
		return "delete";
	}
	
	@RequestMapping("delete")
	public String delete(int id, Model m) {
		Session ss = sf.openSession();
		Transaction t = ss.beginTransaction();
		Student s = ss.get(Student.class, id);
		if(s != null) {
			ss.delete(s);
			t.commit();
			m.addAttribute("successmsg", "Record Deleted Succesfully !!!!");
			return "delete";
		}else {
			m.addAttribute("errormsg", "Id Not Found !!!");
			return "delete";
		}
	}

	@RequestMapping("get")
	public String getdata() {
		return "get";
	}
	
}
