<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>

<%! String greeting = "현재 페이지는 컴퓨터 주요 부품 상품 목록입니다.";
    String tagline = "하단페이지:확인";%>
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
    <div class="container">
        <div class="row" align="center">
            <%@ include file="db/db_conn.jsp"%>
                <%
                    String sql ="select * from product";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();
                    while(rs.next()){ 
                %>
            <div class="col-md-5">
                <div class="card bg-dark text-white">
                    <img src="../image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">제품 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_UnitPrice")%>원
                <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button">상품 상세 정보 &raquo;</a>
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
    <div class="container">
        <div class="text-container">
            <h3>
                <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>
    <div class="card bg-dark text-white">
        <img src="image/event.jpg" class="card-img" alt="이벤트">
        <div class="card-img-overlay">
        	<h5 class="card-title">모니터 이벤트</h5>
        	<p class="card-text">출처:조이젠</p>
        </div>
	</div>
	<div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">60Hz 모니터</a>
        <a href="#" class="list-group-tiem list-group-item-action">144Hz 모니터</a>
        <a href="#" class="list-group-tiem list-group-item-action">165Hz 모니터</a>
        <a href="#" class="list-group-tiem list-group-item-action">240Hz 모니터</a>
        
</div>