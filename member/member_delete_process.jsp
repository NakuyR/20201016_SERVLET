<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");	

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

    if (rs.next()) {
	   if (rs != null) {
	      sql = "delete from member where id = ? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
        pstmt.executeUpdate();
       }
    }
    if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
    response.sendRedirect("../member/member_edit.jsp?edit=delete");

%>