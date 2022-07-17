package team5.vo;

public class MypageList {
	private int pno;
	private int countuser;
	private String title;
	public MypageList() {
		// TODO Auto-generated constructor stub
	}
	public MypageList(int pno, int countuser, String title) {
		this.pno = pno;
		this.countuser = countuser;
		this.title = title;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getCountuser() {
		return countuser;
	}
	public void setCountuser(int countuser) {
		this.countuser = countuser;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
