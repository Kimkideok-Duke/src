package team5.vo;

public class ProjectMemberJoin {
	private int pno;
	private String title;
	private String ptype;
	private String purpose;
	private int code;
	private int userno;
	private String auth;
	public ProjectMemberJoin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProjectMemberJoin(int pno, String title, String ptype, String purpose, int code, int userno, String auth) {
		super();
		this.pno = pno;
		this.title = title;
		this.ptype = ptype;
		this.purpose = purpose;
		this.code = code;
		this.userno = userno;
		this.auth = auth;
	}
	public ProjectMemberJoin(int pno, String title, int userno) {
		super();
		this.pno = pno;
		this.title = title;
		this.userno = userno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	
}
