package enity;

import java.util.Date;

public class Member {
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public Member() {
	}
	
	public Member(int id, String firstName, String lastName, String userName, String email, String password,
			String phone, String description, Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.description = description;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}

	
	
	public Member(String firstName, String lastName, String phone, String description) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phone;
		this.description = description;
	}

	public Member(String userName, String email, String password)
	{
		super();
		this.userName = userName;
		this.email = email;
		this.password = password;
	}
	
	public boolean Checkedit() {
		if (firstName.length()<3 || firstName.length()>30){
			return false;
		}
		if (lastName.length()<3 || lastName.length()>30){
			return false;
		}
		if (phone.length()<9 || phone.length()>13){
			return false;
		}
		if (description.length()<10 || description.length()>200)
			return false;
		return true ;
	}

	private int id;
	private String firstName;
	private String lastName;
	private String userName;
	private String email;
	private String password;
	private String phone;
	private String description;
	private Date createDate;
	private Date updateDate;
}
