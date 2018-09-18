package controller;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import helper.HibernateHelp;
import pojo.User;

@Controller
public class UserController {
	
	@RequestMapping("addUser")
	public String newUser(Model m,User user) {
		m.addAttribute("newUser", user);
		return "NewUser";
	}
	@RequestMapping("saveUser")
 public String saveUser(@ModelAttribute("newUser") User user) {
	 Session sess = HibernateHelp.createsession();
	 sess.beginTransaction();
	 sess.save(user);
	 sess.getTransaction().commit();
	 return "index";
 }
}
