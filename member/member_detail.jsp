<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="dto.Product"%>
<%@ page import="java.util.Date"%>
<%@ page import="example.*"%>
<%@ page errorPage="exception/product_not_found.jsp"%>
<%@ page import="dao.ProductRepository"%>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>   
<title>회원 상세 정보</title>
</head>
<body>
    <%@ include file="../admin/top_menu_ad.jsp" %>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                회원 상세 정보
            </h1>
        </div>
    </div>
        <%@ include file="../db/db_conn.jsp"%>
        <%
            String memberId = request.getParameter("id");
            String sql ="select * from member where id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, memberId);
            rs = pstmt.executeQuery();
            while(rs.next()){ 
            %>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>이름: <%=rs.getString("name")%></h3>
                <p><b>아이디</b>: <%=rs.getString("id")%></p>
                <p><b>패스워드</b>: <%=rs.getString("password")%></p>
                <p><b>성별</b>: <%=rs.getString("gender")%></p>
                <p><b>생년월일</b>: <%=rs.getString("birth")%></p>
                <p><b>이메일</b>: <%=rs.getString("mail")%></p>
                <p><b>전화번호</b>: <%=rs.getString("phone")%></p>
                <p><b>주소</b>: <%=rs.getString("address")%></p>
                <p>생성일 <%=rs.getString("regist_day")%></p>
				<p><a href="../member/member_view.jsp" class="btn btn-secondary">회원 목록 &raquo;</a></p>
            </div>
        </div>
        <hr>
    </div>
    <%
	}
	if (rs != null)
		rs.close();
		if (pstmt != null)
			pstmt.close();
	if (conn != null)
		conn.close();
 %>
</body>
</html>