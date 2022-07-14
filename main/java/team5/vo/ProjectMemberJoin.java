package team5.vo;

public class ProjectMemberJoin {
	private int pno;
	private String title;
	private int userno;
	public ProjectMemberJoin() {
		super();
		// TODO Auto-generated constructor stub
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
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	
}
