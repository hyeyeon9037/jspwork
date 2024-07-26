package ajaxReply;

public class Reply {
	private int no;
	private String content;
	private int ref;
	private String name;
	
	public Reply() {
	}
	
	public Reply(int no, String content, int ref, String name, String redata) {
		super();
		this.no = no;
		this.content = content;
		this.ref = ref;
		this.name = name;
		this.redata = redata;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRedata() {
		return redata;
	}
	public void setRedata(String redata) {
		this.redata = redata;
	}
	
	@Override
	public String toString() {
		return "Reply [no=" + no + ", content=" + content + ", ref=" + ref + ", name=" + name + ", redata=" + redata
				+ "]";
	}
	private String redata;
}
