package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import helper.HibernateHelp;
import pojo.User;

@Controller
public class LoginController {

	@RequestMapping("veifyUser")
	public String UserIs(HttpServletRequest req, HttpServletResponse res, Model m, User user)
			throws ServletException, IOException {
		res.setContentType("text/html");
		m.addAttribute("user", user);
		String usertype = req.getParameter("role");
		String username = req.getParameter("username");
		String pass = req.getParameter("pwd");
		if (usertype != "" && pass != "") {
			String hql = "from User u where u.username= :username and u.password=:pass";
			Session sess = HibernateHelp.createsession();
			sess.beginTransaction();
			Query query = sess.createQuery(hql);
			query.setParameter("username", username);
			query.setParameter("pass", pass);
			User userValid = (User) query.uniqueResult();
			if (userValid != null) {
				sess.getTransaction().commit();
				return "redirect:userhome";
			}

		}
		return "redirect:goLogin";
	}

	@RequestMapping("goLogin")
	public String login(Model model) {
		String msg = "Invalid Credential";
		model.addAttribute("msg", msg);
		return "index";
	}

	@RequestMapping("userhome")
	public String userHome(Model model) {
		String msg = "Welcome";
		model.addAttribute("msg", msg);
		return "userhome";
	}
}
