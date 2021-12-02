package enity;

import dao.userDAO;
import java.io.Serializable;



public class LoginModel {
	private static final long serialVersionUID = 1L;
	private String email;
	private String password;
	

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	
	public String getPass() {
		return password;
	}
	public void setPass(String pass) {
		this.password=pass;
	}
}
