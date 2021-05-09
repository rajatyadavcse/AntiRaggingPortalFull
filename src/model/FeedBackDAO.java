package model;
import java.util.List;
import java.util.TreeSet;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class FeedBackDAO {
		public Session getSession() {
			AnnotationConfiguration con = new AnnotationConfiguration();
			con.configure("hibernate.cfg.xml");
			Session session = con.buildSessionFactory().openSession();
			return session;
		}
		
		public void addFeedback(Feedback feedback) {
			Session session = getSession();
			Transaction transaction = session.beginTransaction();
			session.persist(feedback);
			transaction.commit();
			session.close();
		}
		
		public Feedback getFeedbackById(int id) {
			Session session = getSession();
			Feedback feed = (Feedback) session.get(Feedback.class, id);
			session.close();
			return feed;
		}
		
		public List getAllFeedback() {
			Session session = getSession();
			Query q = session.createQuery("FROM Feedback");
			List result = q.list();
			session.close();
 			return result;
		}
		public int getCountOfFeedbacks() {
			Session session = getSession();
			Criteria crit = session.createCriteria(Feedback.class);
			List result = crit.list();
			int size = result.size();
			session.close();
			return size;		
			}
		public static void main(String args[]) {
			System.out.println(new FeedBackDAO().getCountOfFeedbacks());
		}
}
