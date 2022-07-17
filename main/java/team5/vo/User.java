package team5.vo;

import java.util.Date;

public class User {
	private int userno;
	private String email;
	private String id;
	private String pw;
	private String name;
	private Date joindate;
	private String agree;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int userno, String email, String id, String pw, String name, Date joindate, String agree) {
		super();
		this.userno = userno;
		this.email = email;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.joindate = joindate;
		this.agree = agree;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public String getAgree() {
		return agree;
	}
	public void setAgree(String agree) {
		this.agree = agree;
	}
	
}
