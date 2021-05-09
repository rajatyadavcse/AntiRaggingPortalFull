package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ForgetPassword {
@Id @GeneratedValue(strategy=GenerationType.AUTO)
private int id;
@Column(unique=true)
private String email;
private int token;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getToken() {
	return token;
}
public void setToken(int token) {
	this.token = token;
}
}
