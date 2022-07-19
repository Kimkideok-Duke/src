package team5.vo;

import java.util.Date;

public class Log {
	private int logno; 
	private	int itemno;
	private	int pno;  
	private	int userno;  
	private	Date logDate;
	/* join 쿼리
	private Project Project;
	private Schedule Schedule;
	private User User;*/
	private String item;
	private String progress;
	private String deadline;
	private String comm;
	
	public Log() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Log(int logno, int itemno, int pno, int userno, Date logDate, String item, String progress, String deadline,
			String comm) {
		this.logno = logno;
		this.itemno = itemno;
		this.pno = pno;
		this.userno = userno;
		this.logDate = logDate;
		this.item = item;
		this.progress = progress;
		this.deadline = deadline;
		this.comm = comm;
	}

	public int getLogno() {
		return logno;
	}

	public void setLogno(int logno) {
		this.logno = logno;
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

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public Date getLogDate() {
		return logDate;
	}

	public void setLogDate(Date logDate) {
		this.logDate = logDate;
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

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public String getComm() {
		return comm;
	}

	public void setComm(String comm) {
		this.comm = comm;
	}
	
}