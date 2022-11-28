<%@ page contentType = "text/html;charset=utf-8" %>
<%@	page import="dto.Product"	%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<% 
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("j_username");
    String password = request.getParameter("j_password");
	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userId);
	rs = pstmt.executeQuery();
    
    if (rs.next()) {
        String db_password = rs.getString("password");
	   if (rs == null) {
	      response.sendRedirect("../login/login_user.jsp?error=1");
       }
        else {
            if(password.equals(db_password)){
                session.setAttribute("ID",userId);
                response.sendRedirect("../index.jsp");
            }
            else{
                response.sendRedirect("../login/login_user.jsp?error=1");
            }
        }
    }
    else{
        response.sendRedirect("../login/login_user.jsp?error=1");
    }
    if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
    




%>
