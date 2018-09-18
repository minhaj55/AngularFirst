package controller;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import helper.HibernateHelp;
import pojo.Librarian;

@Controller
public class AdminController {
	ArrayList<Librarian> all_librarian = null;
	
	@RequestMapping("Regform")
	public String registerForm(Model m ,Librarian librarian) {
		m.addAttribute("newLibrarian", librarian);
		
		return "Register";
	}

	@RequestMapping("save")
	public String saveLibrarian(@ModelAttribute("newLibrarian") Librarian librarian ) {
		Session session= HibernateHelp.createsession();
		session.beginTransaction();
		session.save(librarian);
		session.getTransaction().commit();
		
		return "redirect:showAll";
	}
	
	@RequestMapping("showAll")
	public String getAllLib(Model m) {
		m.addAttribute("librarian", new Librarian());
		Session session= HibernateHelp.createsession();
		session.beginTransaction();
		Query query = session.createQuery("from Librarian");
		all_librarian = (ArrayList<Librarian>) query.list();
		session.getTransaction().commit();
		m.addAttribute("all", all_librarian);
		return "Home";
	}
	@RequestMapping("remove")
	public String removeLibrarian(@RequestParam("id") int id) {
		Session session= HibernateHelp.createsession();
		session.beginTransaction();
		Librarian libr = session.get(Librarian.class, id);
		session.delete(libr);
		session.getTransaction().commit();
		return "redirect:showAll";
	}

	
}
