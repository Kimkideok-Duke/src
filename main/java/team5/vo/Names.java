package team5.vo;

public class Names {
	private int userno;
	private String item;
	private String name;
	public Names() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Names(int userno, String item, String name) {
		super();
		this.userno = userno;
		this.item = item;
		this.name = name;
	}

	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}
	
}
