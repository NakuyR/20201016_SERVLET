<%@ page contentType = "text/html;charset=utf-8" %>
<nav class="navbar navbar-expand navbar-dark bg-dark">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    	카테고리
  		</button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">CPU</a>
            <a class="dropdown-item" href="#">GPU</a>
            <a class="dropdown-item" href="#">RAM</a>
            <a class="dropdown-item" href="#">SSD/HDD</a>
            <a class="dropdown-item" href="#">MAINBOARD</a>
            <a class="dropdown-item" href="#">COOLER</a>
        </div>
    </div>
    
    <div>
        <img src="../image/logo.png" class="img-fluid" alt="main_image">
    </div>
    
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="../index.jsp">메뉴바:홈페이지</a>
            <a class="navbar-brand" href="../member/member_view.jsp">회원 보기</a>
            <a class="navbar-brand" href="../member/member_edit.jsp?edit=update">회원 수정</a>
            <a class="navbar-brand" href="../member/member_edit.jsp?edit=delete">회원 삭제</a>
            <a class="navbar-brand" href="../admin/index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="../admin/product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
        </div>
    </div>
</nav>