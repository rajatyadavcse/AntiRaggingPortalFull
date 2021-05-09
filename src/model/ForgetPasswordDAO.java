package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;

public class ForgetPasswordDAO {
	public Session getSession() {
		AnnotationConfiguration con = new AnnotationConfiguration();
		con.configure("hibernate.cfg.xml");
		Session session = con.buildSessionFactory().openSession();
		return session;
	}
	public void addForgetPassword(ForgetPassword p) {
		Session session=getSession();
		Transaction trans = session.beginTransaction();
		session.persist(p);
		trans.commit();
		session.close();
	}
   public int findTokenByEmail(String email) {
	   Session session = getSession();
	   Query q = session.createQuery("SELECT p FROM ForgetPassword p WHERE p.email=:e");
	   q.setString("e", email);
	   List result = q.list();
	   int token=0;
	   for(Object x:result) {
		   ForgetPassword p=(ForgetPassword)x;
		   token=p.getToken();
	   }
	   return token;
   }

}
