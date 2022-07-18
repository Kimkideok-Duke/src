package team5.vo;
// team5.vo.MemberAccountJoin
public class MemberAccountJoin {
	private int userno;
	private int pno;
	private String auth;
	private String name;
	public MemberAccountJoin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberAccountJoin(int userno, int pno, String auth, String name) {
		super();
		this.userno = userno;
		this.pno = pno;
		this.auth = auth;
		this.name = name;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
