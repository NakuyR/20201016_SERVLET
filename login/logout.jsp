<%@ page contentType="text/html; charset=utf-8"%>

<%
	session.invalidate();
	response.sendRedirect("../admin/index_ad.jsp");
%>
