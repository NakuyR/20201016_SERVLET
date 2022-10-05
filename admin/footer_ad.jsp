<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %>
<footer class="container">
    <p>&copy;쇼핑몰대표:정도훈 고유번호:20201016 연락처:jdh1669@sungkyul.ac.kr <br>
    <%
        ShopTime time= new ShopTime();
        %>
    오늘 날짜와 시간: <%= time.timenow() %>
        
    </p>
    
</footer>