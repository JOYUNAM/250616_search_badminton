package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	Connection conn = null;
	PreparedStatement pstmt= null;
	ResultSet rs = null;
	
	public Connection getConnection () {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","Track2_18","1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public int insert(DTO dto) throws Exception{
		int row = 0;
		String sql ="insert into tbl_resv_202301(\r\n"
				+ "resv_no, cust_no, resv_date, court_no)\r\n"
				+ "values(?,?,?,?)";
		conn = getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getResv_no());
		pstmt.setString(2, dto.getCust_no());
		pstmt.setString(3, dto.getResv_date());
		pstmt.setString(4, dto.getCourt_no());
		 	
		row = pstmt.executeUpdate();
		
		return row;
	}
	public DTO i_list(String cust_no) throws Exception{
		//DTO dto = new DTO();
		DTO dto = null;                // ← 초기값을 null 로
		String sql = "select \r\n"
				+ "a.cust_no,\r\n"
				+ "a.cust_name,\r\n"
				+ "b.resv_date,\r\n"
				+ "b.court_no\r\n"
				+ "from tbl_cust_202301 a \r\n"
				+ "join tbl_resv_202301 b\r\n"
				+ "on a.cust_no = b.cust_no\r\n"
				+ "where a.cust_no = ?";
		
		conn = getConnection();
		pstmt = conn.prepareStatement(sql);		
		
	    // → 여기서는 JSP에서 넘어온 파라미터 cust_no 를 써야 합니다!
	    pstmt.setString(1, cust_no);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()){
        dto = new DTO();        // ← 결과가 있을 때만 new
		dto.setCust_no(rs.getString("cust_no"));
		dto.setCust_name(rs.getString("cust_name"));
		dto.setResv_date(rs.getString("resv_date"));
		dto.setCourt_no(rs.getString("court_no"));
		}
	    return dto;  // 결과 없으면 null
	}
	//if(rs.next()) 안에서만 new DTO() 하도록 고치면,
	//결과가 없을 때 dto 는 여전히 null → JSP 쪽 if(dto==null) 분기 타게 됩니다.
}
