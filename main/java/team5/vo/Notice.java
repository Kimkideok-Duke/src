package team5.vo;

import java.util.Date;

public class Notice {
	private int noticeno;
	private int pno;
	private String title;
	private String content;
	private Date creatdate;
	private int views;
	public Notice() {
		// TODO Auto-generated constructor stub
	}
	public Notice(int noticeno, int pno, String title, String content, Date creatdate, int views) {
		super();
		this.noticeno = noticeno;
		this.pno = pno;
		this.title = title;
		this.content = content;
		this.creatdate = creatdate;
		this.views = views;
	}
	public int getNoticeno() {
		return noticeno;
	}
	public void setNoticeno(int noticeno) {
		this.noticeno = noticeno;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatdate() {
		return creatdate;
	}
	public void setCreatdate(Date creatdate) {
		this.creatdate = creatdate;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
}
