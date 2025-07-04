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
	.content table{width : 6009ㅌ; margin: 0 auto;}
	.content table th,td{border: 1px solid black;}
	.content table .btn_group{text-align:center;}
	.footer{background-color:blue; color: black; text-align:center; padding:16px 0;}
</style>
<script>
	function send(){
		if(!frm.cust_no.value.trim()){
			alert("고객번호가 입력되지 않았습니다.");
			frm.cust_no.focus();
			return;
		}
		alert("코트예약을 조회합니다.");
		frm.submit();
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
				<form id="frm" name="frm" method="post" action="i_list_pro.jsp">
					<h2 class="title">코트예약조회</h2>
						<table>
							<tr>
								<th>고객번호를 입력하시오.</th>
								<td>
									<input type ="text" name="cust_no">예)1001
								</td>
							</tr>
							<tr>
								<td colspan ="2" class="btn_group">
									<input type ="button" value="코트예약조회" onClick="send()">
									<input type ="button" value="홈으로" onClick="location.href = 'index.jsp'">
							<!--  	input type ="button" value ="흠으로" onClick="location.href='index.jsp'">-->
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