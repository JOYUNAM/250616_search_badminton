package model;

public class DTO {
	//tbl_resv_202301
	private String resv_no;//예약번호
	private String cust_no;//고객번호
	private String resv_date;//예약일자
	private String court_no;//코트번호
	
	//tbl_cust_202301
	//private String cust_no;//고객번호
	private String cust_name; //고객이름
	private String cust_tele; //전화번호
	
	//tbl_court_202301
	//private String court_no; //코트번호
	private String used_flag; //사용유무

	public String getResv_no() {
		return resv_no;
	}

	public void setResv_no(String resv_no) {
		this.resv_no = resv_no;
	}

	public String getCust_no() {
		return cust_no;
	}

	public void setCust_no(String cust_no) {
		this.cust_no = cust_no;
	}

	public String getResv_date() {
		return resv_date;
	}

	public void setResv_date(String resv_date) {
		this.resv_date = resv_date;
	}

	public String getCourt_no() {
		return court_no;
	}

	public void setCourt_no(String court_no) {
		this.court_no = court_no;
	}

	public String getCust_name() {
		return cust_name;
	}

	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	public String getCust_tele() {
		return cust_tele;
	}

	public void setCust_tele(String cust_tele) {
		this.cust_tele = cust_tele;
	}

	public String getUsed_flag() {
		return used_flag;
	}

	public void setUsed_flag(String used_flag) {
		this.used_flag = used_flag;
	}
	
	
}
