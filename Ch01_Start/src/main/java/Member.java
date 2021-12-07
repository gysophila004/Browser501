import java.sql.Date;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private Date reg_data;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getReg_data() {
		return reg_data;
	}
	public void setReg_data(Date reg_data) {
		this.reg_data = reg_data;
	}

	
}
