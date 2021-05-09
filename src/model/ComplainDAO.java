package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.TreeSet;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

public class ComplainDAO {
	public Session getSession() {
		AnnotationConfiguration con = new AnnotationConfiguration();
		con.configure("hibernate.cfg.xml");
		Session session = con.buildSessionFactory().openSession();
		return session;
	}
	
	public void addComplain(Complain complain) {
		Session session = getSession();
		Transaction transaction = session.beginTransaction();
		session.persist(complain);
		transaction.commit();
		session.close();
	}
	
	public Complain getComplainById(int id) {
		Session session = getSession();
		Complain comp = (Complain) session.get(Complain.class, id);
		session.close();
		return comp;
	}
	
	public List getAllComplains() {
		Session session = getSession();
		Query q = session.createQuery("FROM Complain");
		List result = q.list();
		session.close();
		return result;	
	}
	public int getComplainsCount() {
		Session session = getSession();
		int n = (int)session.createCriteria("Complain").setProjection(Projections.rowCount()).uniqueResult();
		session.close();
		return n;
	}
	public Complain  findComplainStatusByComplainId(int complainId) {
		Session session = getSession();
		 Complain result = (Complain)session.get(Complain.class, complainId);
		 return result;
	}
	public ArrayList<Complain> findComplainBetweenTwoDates(String startDate,String endDate) throws ParseException {
		Session session = getSession();
		ArrayList<Complain>complains=new ArrayList<>();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date from=sdf.parse(startDate);
		Date to=sdf.parse(endDate);
		Criteria crit = session.createCriteria(Complain.class);
		crit.add(Restrictions.between("registeredOn", from, to));
		List result = crit.list();
		for(Object x:result) {
			Complain c=(Complain)x;
			complains.add(c);
		}
		session.close();
		return complains;
	}
	public static void main(String args[]) throws ParseException {
		List result = new ComplainDAO().findComplainBetweenTwoDates("2018-07-22", "2018-07-23");
		for(Object x:result) {
			Complain c=(Complain)x;
			System.out.println(c.toString());
		}
	}
	public ArrayList<Complain> findComplainsByComplainIds(ArrayList<Integer> ids) {
		Session session = getSession();
		int i=0;
		ArrayList<Complain> complains=new ArrayList<>();
		for(Integer id:ids) {
			Complain x = (Complain)session.get(Complain.class,ids.get(i));
			i++;
			complains.add(x);
		}
		return complains;
	}
}

