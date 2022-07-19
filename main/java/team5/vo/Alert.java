package team5.vo;

public class Alert {
	//m.userno, prj.TITLE, s.item, s.progress
	private int userno;
	private String title;
	private String item;
	private String progress;
	public Alert() {
		// TODO Auto-generated constructor stub
	}
	public Alert(int userno, String title, String item, String progress) {
		super();
		this.userno = userno;
		this.title = title;
		this.item = item;
		this.progress = progress;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	
}
