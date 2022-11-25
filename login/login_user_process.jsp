<% 
    String userId = request.getParameter("j_username");
    if (userId !=null){
        session.setAttribute("ID",userId);
        response.sendRedirect("../index.jsp");
    }
    else{
        response.sendRedirect("../login/login_user.jsp?error=1");
    }
%>
