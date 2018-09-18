package helper;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import pojo.Book;
import pojo.IssuedBooks;
import pojo.Librarian;
import pojo.Student;
import pojo.User;

public class HibernateHelp {
	
	public static Session createsession() {
		Configuration config = new Configuration();
		config.configure("hibernate.cfg.xml");
		config.addAnnotatedClass(Librarian.class).addAnnotatedClass(User.class).addAnnotatedClass(IssuedBooks.class).addAnnotatedClass(Student.class);
		SessionFactory factory = config.buildSessionFactory();
		Session session = factory.getCurrentSession();
		return session;
	}
public static Session bookSession() {
	Configuration config = new Configuration();
	config.configure("hibernate.cfg.xml");
	config.addAnnotatedClass(Book.class);
	SessionFactory factory = config.buildSessionFactory();
	Session session = factory.getCurrentSession();
	return session;
}
}
