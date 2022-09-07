<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
<%
    HelloWorld h = new HelloWorld();
%>
<%@ page import="java.util.Date"%>


<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome! 개인 쇼핑몰 사이트입니다.</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
    <%@ include file = "top_banner.jsp"%>
    <%@ include file = "top_menu.jsp"%>
    <%@ include file = "body_main.jsp"%>
    <%@ include file = "footer.jsp"%>
</body>	
</html>
