package team5.vo;
// team5.vo.Account
public class Account {
	private int userno;
	private String email;
	private String id;
	private String pw;
	private String name;
	private int agree;
	public Account() {
		// TODO Auto-generated constructor stub
	}
	public Account(int userno, String email, String id, String pw, String name, int agree) {
		this.userno = userno;
		this.email = email;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.agree = agree;
	}
	
	public Account(String email, String id, String pw, String name, int agree) {
		this.email = email;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.agree = agree;
	}
	
	public Account(String id, String pw) {
		this.id = id;
		this.pw = pw;
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
	public int getAgree() {
		return agree;
	}
	public void setAgree(int agree) {
		this.agree = agree;
	}
	
}
