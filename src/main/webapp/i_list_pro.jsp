<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type ="text/css">
	*{margin :0; padding: 0;}
	ul,lu{list-style : none;}
	a{text-decoration: none; color:white;}
	.logo{background-color:blue; color: white; text-align:center; padding:16px 0;}
	.nav {overflow:hidden; background-color:plum; padding: 16px 0;}
	.nav ul,li{float: left; text-align:center; padding: 0 20px;}
	.title{text-align:center; padding: 20px;}
	.content{background-color:#808080; padding:10px 20px; }
	.content table{width : 600px; margin: 0 auto; text-align:center;}
	.content table th,td{border: 1px solid black;}
	.content table .btn_group{text-align:center;}
	.footer{background-color:blue; color: black; text-align:center; padding:16px 0;}
</style>
</head>
<body>
	<div class="header">
		<h1 class="logo">(과정평가형 정보처리산업기사)배드민턴 코트예약 관리프로그램 Ver2025-06</h1>
			<div class="navi">
				<ul class="nav">
					<li><a href ="insert.jsp">코트예약</a></li>
					<li><a href ="i_list.jsp">코트예약조회</a></li>
					<li><a href ="p_list.jsp">사용일수조회</a></li>
					<li><a href ="index.jsp">홈으로</a></li>
				</ul>
			</div>
	</div>
	
	<div class="section">
		<section>
			<div class="content">
							<%
								DAO dao = new DAO();
							
								String cust_no = request.getParameter("cust_no");
								// 디버깅용 출력  ★★★
								  out.println("<p>▶ 디버그: cust_no 파라미터 = " + cust_no + "</p>");
								
								DTO dto = dao.i_list(cust_no);
								//위에서 받아 온 cust_no 값을 DAO의 i_list 메서드에 인자로 넘깁니다.
								
								/*	i_list() 메서드는 내부에서 이 고객번호로 DB를 조회하고,
									결과가 있으면 해당 정보를 담은 DTO 객체를 생성해 반환합니다.
									조회 결과가 없으면 null을 반환하도록 구현되어 있다.		  */
									
								if(dto == null){
							%>
							<h2 class="title">코트예약 정보가 존재하지 않습니다.</h2>
							<table>
							<tr>
								<td colspan ="4" class="btn_group">
									<input type ="button" value="돌아가기" onClick="location.href ='i_list.jsp'">
								</td>
							</tr>
							</table>
							<%
								}else{
							%>
			
					<h2 class="title">고객번호: <%=  dto.getCust_no()%>님의 코트예약 조회</h2>
						<table >
							<tr>
								<th>고객번호</th>
								<th>이름</th>
								<th>코트사용일자</th>
								<th>코트번호</th>
							</tr>
							<tr>
								<td><%= dto.getCust_no()%></td>
								<td><%= dto.getCust_name()%></td>
								<td><%= dto.getResv_date()%></td>
								<td><%= dto.getCourt_no()%></td>
							</tr>
							
							 
							<tr>
								<td colspan ="4" class="btn_group">
									<input type ="button" value="돌아가기" onClick="location.href ='i_list.jsp'">
								</td>
							</tr>
							<%
								}
							%>
						</table>
			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRD KOREA All rights reserve Human Resources Development Service of Korea</p>
	</div>
	
</body>
</html>