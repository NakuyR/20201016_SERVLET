<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>

<%! String greeting = "현재 페이지는 회원 목록입니다."; %>
 
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>회원 목록</title>
</head>
<body>    
    <%@ include file = "../admin/top_menu_ad.jsp"%>
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <div class="container">
        <div class="row" align="center">
            <%@ include file="../db/db_conn.jsp"%>
                <%
                    String sql ="select * from member";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    while(rs.next()){ 
                %>
            <div class="col-md-5">
                <div class="card bg-dark text-white">
                    <img src="../image/black.jpg" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h1 class="card-title"><%=rs.getString("name")%></h1>
                    </div>
                </div>
                <h3>ID : <%=rs.getString("id")%></h3>
                <p>MAIL : <%=rs.getString("mail")%></p>
                <p>PHONE : <%=rs.getString("phone")%></p>
                <p><a href="member_detail.jsp?id=<%=rs.getString("id")%>" class="btn btn-secondary" role="button">회원 정보 &raquo;</a>
            </div>
            <%
            }
            if(rs != null)
                rs.close();
            if(pstmt != null)
                pstmt.close();
            if(conn != null)
                conn.close();
            %>
        </div>
        <hr>
	</div>
</body>
</html>
