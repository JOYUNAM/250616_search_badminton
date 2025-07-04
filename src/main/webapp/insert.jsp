<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.content table{width : 500px; margin: 0 auto;}
	.content table th,td{border: 1px solid black;}
	.content table .btn_group{text-align:center;}
	.footer{background-color:blue; color: black; text-align:center; padding:16px 0;}
</style>
<script>
	function send(){
		if(!frm.resv_no.value){
			alert("예약번호가 입력되지 않았습니다.");
			frm.resv_no.focus();
			return;
		}
		if(!frm.cust_no.value){
			alert("고객번호가 입력되지 않았습니다.");
			frm.cust_no.focus();
			return;
		}
		if(!frm.resv_date.value){
			alert("예약일자가 입력되지 않았습니다.");
			frm.resv_date.focus();
			return;
		}
		if(!frm.court_no.value){
			alert("코트번호가 입력되지 않았습니다.");
			frm.court_no.focus();
			return;
		}
		alert("코트예약정보가 등록되었습니다.");
		frm.submit();
	}
	function cancel(){
		alert("정보를 지우고 처음부터 다시 입력합니다.");
		frm.reset();
		frm.resv_no.focus();
		return;
	}
	
</script>
</head>
<body>
	<div class="header">
		<h1 class="logo">(과정평가형 정보처리산업기사)배드민턴 코트예약 관리프로그램 Ver2025-06</h1>
			<div class="navi">
				<ul class="nav">
					<li><a href ="insert.jsp">코트예약</a></li>
					<li><a href ="i_list.jsp">코트예약조회</a></li>
					<li><a href ="index.jsp">홈으로</a></li>
				</ul>
			</div>
	</div>
	
	<div class="section">
		<section>
			<div class="content">
				<form id="frm" name="frm" method="post" action="insert_pro.jsp">
					<h2 class="title">코트예약</h2>
						<table>
							<tr>
								<th>예약번호</th>
								<td>
									<input type ="text" name="resv_no">예)20250620
								</td>
							</tr>
							<tr>
								<th>고객번호</th>
								<td>
									<input type ="text" name="cust_no">예)1001
								</td>
							</tr>
							<tr>
								<th>예약일자</th>
								<td>
									<input type ="text" name="resv_date">예)20250620
								</td>
							</tr>
							<tr>
								<th>코트번호</th>
								<td>
									<input type ="text" name="court_no">예)C001~C009
								</td>
							</tr>
							<tr>
								<td colspan ="2" class="btn_group">
									<input type ="button" value="예약등록" onClick="send()">
									<input type ="button" value="다시쓰기" onClick="cancel()">
								</td>
							</tr>
						</table>
				</form>
			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRD KOREA All rights reserve Human Resources Development Service of Korea</p>
	</div>
	
</body>
</html>