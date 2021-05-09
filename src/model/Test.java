package model;

import java.util.Collection;
import java.util.Date;
import java.util.TreeSet;

public class Test {

	public static void main(String args[]) {
		Date d=new Date();
		Complain c = new Complain("lokesh", "tiwari","lokesh0412@gmail.com","8470988708","imsec",
			 "govindpuram",  201013, "up", d , "abcd",
		new byte[0]);
		UserDetailDAO u = new UserDetailDAO();
		Collection<Complain> complains=new TreeSet<>();
		complains.add(c);
		UserDetail udetail=u.getUserDetailById(1);
		udetail.setComplains(complains);
		u.addUserDetail(udetail);
	}

}
