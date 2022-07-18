package team5.vo;

import oracle.sql.DATE;

public class Schedule {
	private int itemno;
	private int pno;
	private String item;
	private String progress;
	private DATE deadline;
	private String comm;
	private String perm;
	public Schedule() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Schedule(int itemno) {
		super();
		this.itemno = itemno;
	}

	public Schedule(int itemno, String item, String progress, DATE deadline, String comm) {
		super();
		this.itemno = itemno;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
	}

	public Schedule(int pno, String item, String progress, DATE deadline, String comm, String perm) {
		super();
		this.pno = pno;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
		this.perm = perm;
	}

	public Schedule(String item, String progress, DATE deadline, String comm) {
		super();
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
	}

	public Schedule(int itemno, int pno, String item, String progress, DATE deadline, String comm, String perm) {
		super();
		this.itemno = itemno;
		this.pno = pno;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
		this.perm = perm;
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
	public DATE getDeadline() {
		return deadline;
	}
	public void setDeadline(DATE deadline) {
		this.deadline = deadline;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public String getPerm() {
		return perm;
	}
	public void setPerm(String perm) {
		this.perm = perm;
	}
	
	
}