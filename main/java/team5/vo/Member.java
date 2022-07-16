package team5.vo;

public class Member {
	private int userno;
	private int pno;
	private String auth;
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(int userno, int pno, String auth) {
		super();
		this.userno = userno;
		this.pno = pno;
		this.auth = auth;
	}
	public Member(int userno, int pno) {
		super();
		this.userno = userno;
		this.pno = pno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
}
