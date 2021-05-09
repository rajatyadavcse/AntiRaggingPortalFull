package model;
import java.util.Date;
import java.util.List;
import java.security.*;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;
public class UserLoginDAO {

	public Session getSession() {
		AnnotationConfiguration con = new AnnotationConfiguration();
		con.configure("hibernate.cfg.xml");
		Session session = con.buildSessionFactory().openSession();
		return session;
	}
	public void addUserLogin(UserLogin userLogin) {
		Session session = getSession();
		Transaction trans = session.beginTransaction();
		session.persist(userLogin);
		trans.commit();
		System.out.println("done");
		session.close();
	}
	public UserLogin findUserLoginByUserName(String username) {
		Session session = getSession();
		Query q = session.createQuery("SELECT userLogin FROM UserLogin userLogin WHERE userLogin.userName=:u");
		q.setString("u",username);
		UserLogin u=null;
		for(Object x:q.list()) {
			 u=(UserLogin)x;
		}
		return u;
	}
	public UserLogin authenticateUser(UserLogin userLogin) {
		Session session = getSession();
		Query q = session.createQuery("SELECT user FROM UserLogin user WHERE user.username=:u and user.password=:p");
		q.setString("u", userLogin.getUsername());
		q.setString("p", userLogin.getPassword());
		List result = q.list();
		UserLogin user=null;
		for(Object x:result) {
			user=(UserLogin) x;
		}
		session.close();
        return user;
			}
	public String findPasswordByEmailId(String email) {
		Session session = getSession();
		Query q = session.createQuery("SELECT u FROM UserLogin u WHERE u.username=:e");
		q.setString("e", email);
		List result = q.list();
		String pass=null;
		for(Object x:result) {
			UserLogin u=(UserLogin)x;
			pass=u.getPassword();
		}
		return pass;
	}
	public void changePasswordById(int id,String password) {
		Session session = getSession();
		Transaction trans = session.beginTransaction();
		UserLogin user=(UserLogin) session.get(UserLogin.class, id);
		user.setPassword(password);
		session.persist(user);
		trans.commit();
		session.close();
	}

	public static String sha1(String input) throws NoSuchAlgorithmException {
	        MessageDigest mDigest = MessageDigest.getInstance("SHA1");
	        byte[] result = mDigest.digest(input.getBytes());
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < result.length; i++) {
	            sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
	        }
	         
	        return sb.toString();
		}
	public void changePasswordByEmail(String email,String password) {
		Session session = getSession();
		Query q = session.createQuery("UPDATE UserLogin SET password=:p WHERE email=:e");
        q.setString("p", password);
        q.setString("e", email);
        session.close();
	}
	public static void main(String args[]) throws NoSuchAlgorithmException {
		String pass=sha1("admin");
		new UserLoginDAO().addUserLogin(new UserLogin(pass,"admin"));
	}
}
