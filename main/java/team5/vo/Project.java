package team5.vo;
// team5.vo.Project
public class Project {
	private int pno;
	private String title;
	private String ptype;
	private String purpose;
	private int code;

	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Project(int pno, String title, String ptype, String purpose, int code) {
		super();
		this.pno = pno;
		this.title = title;
		this.ptype = ptype;
		this.purpose = purpose;
		this.code = code;
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
	
}
