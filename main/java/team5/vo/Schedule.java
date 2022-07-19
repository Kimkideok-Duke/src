package team5.vo;

import java.sql.Date;

public class Schedule {
	private int itemno;
	private int pno;
	private String item;
	private String progress;
	private Date deadline;
	private String deadline_s;
	private String comm;
	private String auth;
	private int userno;
	public Schedule() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Schedule(int itemno) {
		super();
		this.itemno = itemno;
	}

	public Schedule(int itemno, String item, String progress, Date deadline, String comm) {
		super();
		this.itemno = itemno;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
	}

	public Schedule(int itemno, int pno, String item, String progress, String deadline_s, String comm, String auth) {
		super();
		this.itemno = itemno;
		this.pno = pno;
		this.item = item;
		this.progress = progress;
		this.deadline_s = deadline_s;
		this.comm = comm;
		this.auth = auth;
	}

	public Schedule(int pno, String item, String progress, Date deadline, String comm, String auth) {
		super();
		this.pno = pno;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
		this.auth = auth;
	}

	public Schedule(String item, String progress, Date deadline, String comm) {
		super();
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
	}

	public Schedule(int itemno, int pno, String item, String progress, Date deadline, String comm, String auth) {
		super();
		this.itemno = itemno;
		this.pno = pno;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
		this.auth = auth;
	}
	public int getItemno() {
		return itemno;
	}
	public void setItemno(int itemno) {
		this.itemno = itemno;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
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
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}

	public String getDeadline_s() {
		return deadline_s;
	}

	public void setDeadline_s(String deadline_s) {
		this.deadline_s = deadline_s;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}
	
	
}