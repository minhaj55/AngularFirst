package controller;

import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import helper.HibernateHelp;
import pojo.Book;
import pojo.IssuedBooks;

@Controller
public class LibraryController {
	ArrayList<Book> bookList = null;
	ArrayList<IssuedBooks> issuedbooks = null;
	@RequestMapping("addBook")
	public String addBook(Model mode, Book book) {
		mode.addAttribute("newBook", book);
		return "addBook";
	}

	@RequestMapping("saveBook")
	public String saveBook(@ModelAttribute("newBook") Book book) {
		Date date = new Date();
		java.sql.Date addDate = new java.sql.Date(date.getTime());
		book.setAdded(addDate);

		Session sess = HibernateHelp.bookSession();
		sess.beginTransaction();
		sess.save(book);
		sess.getTransaction().commit();
		return "redirect:viewBooks";
	}
	@RequestMapping("viewBooks")
	public String viewAllBook(Model m) {
		m.addAttribute("Book", new Book());
		Session session= HibernateHelp.bookSession();
		session.beginTransaction();
		Query query = session.createQuery("from Book");
		bookList = (ArrayList<Book>) query.list();
		session.getTransaction().commit();
		m.addAttribute("books", bookList);
		return "HomeBook";
	}
	
	@RequestMapping("issue")
	public String issueBook(@RequestParam("id") int id,@RequestParam("name") String name,Model model) {
		model.addAttribute("issuebook", new IssuedBooks());
		model.addAttribute("bookId", id);
		model.addAttribute("bookName", name);
		return "issuebook";
	}

	@RequestMapping("confrm")
	public String confirmIssue(@RequestParam("id") int id,@RequestParam("name") String bookName,@ModelAttribute("issuebook") IssuedBooks isubook) {
		Date date = new Date();
		java.sql.Date isuDate = new java.sql.Date(date.getTime());
		isubook.setIssue_date(isuDate);
		isubook.setBook_id(id);
		isubook.setBook_name(bookName);
		Session session = HibernateHelp.createsession();
		session.beginTransaction();
		session.save(isubook);
		session.getTransaction().commit();
		return "";
		}
	public String showAllIssuedBooks(Model m) {
		m.addAttribute("IssuedBooks", new IssuedBooks());
		Session session= HibernateHelp.bookSession();
		session.beginTransaction();
		Query query = session.createQuery("from IssuedBooks");
		issuedbooks = (ArrayList<IssuedBooks>) query.list();
		session.getTransaction().commit();
		m.addAttribute("issued", issuedbooks);
		return "allissuedbooks";
	}
}
