<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
    String userid = request.getParameter("userid");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

    if (rs.next()){
	    sql = "UPDATE member SET password=?, name=?, gender=?, birth=?, mail=?, phone=?, address=? WHERE id=? ;";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, gender);
		pstmt.setString(4, birth);
		pstmt.setString(5, mail);
		pstmt.setString(6, phone);
		pstmt.setString(7, address);
		pstmt.setString(8, userid);
		pstmt.executeUpdate();
        
    }
    
	   
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

    response.sendRedirect("../member/member_edit.jsp?edit=update");
%>


