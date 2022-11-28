<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>회원 정보 수정</title>
</head>
<body>
   <jsp:include page="../admin/top_menu_ad.jsp" />
   <div class="jumbotron">
	<div class="container">
		<h1 class="display-3">회원 정보 수정</h1>
	</div>
   </div>
   <%@ include file="../db/db_conn.jsp"%>
   <%
	String memberId = request.getParameter("id");

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, memberId);
	rs = pstmt.executeQuery();
	if (rs.next()) {
   %>
 <div class="container">
      <div class="row">
	    <div class="col-md-8">
	    <form name="member" action="../member/member_update_process.jsp?userid=<%=rs.getString("id")%>" class="form-horizontal" method="post">
	    <div class="form-group row">
		<label class="col-sm-2">회원 이름</label>
		<div class="col-sm-3">
			<input type="text" id="name" name="name" class="form-control" value='<%=rs.getString("name")%>'>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-2">아이디</label>
		<div class="col-sm-3">
			<input type="text" id="id" name="id" class="form-control" value="<%=rs.getString("id")%>" readonly>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-2">패스워드</label>
		<div class="col-sm-3">
			<input type="text" id="password" name="password" class="form-control" value="<%=rs.getString("password")%>">
		</div>
	    </div>
	    <div class="form-group row">
            <label class="col-sm-2">성별</label>
            <div class="col-sm-3">
                <input type="radio" id="man" name="gender" value="남자" checked>
                <label for="man">남자</label>
                <input type="radio" id="woman" name="gender" value="여자">
                <label for="woman">여자</label>
            </div>
        </div>
	    <div class="form-group row">
		<label class="col-sm-2">생년월일</label>
		<div class="col-sm-3">
			<input type="date" name="birth" class="form-control" value="<%=rs.getString("birth")%>">
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-2">이메일</label>
		<div class="col-sm-3">
			<input type="text" name="mail" class="form-control" value="<%=rs.getString("mail")%>">
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-2">전화번호</label>
		<div class="col-sm-3">
			<input type="text" id="phone" name="phone" class="form-control" value="<%=rs.getString("phone")%>">
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-2">주소</label>
		<div class="col-sm-3">
			<input type="text" id="address" name="address" class="form-control" value="<%=rs.getString("address")%>">
		</div>
	    </div>
	    <div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10 ">
			<input type="submit" class="btn btn-primary" value="수정">
		</div>
	    </div>
	</form>
	</div>
   </div>
</div>
<%
	}
 %>
 <hr>
 <jsp:include page="../admin/footer_ad.jsp" />
</body>
</html>
	
