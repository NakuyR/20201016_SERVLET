<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<%! String greeting = "현재 페이지는 컴퓨터 주요 부품 상품 목록입니다.";
    String tagline = "하단페이지:확인";%>
    <div class="jumbotron">
        <div class="container">
            <h3 class="display-4">
                <%=greeting%>
            </h3>
        </div>
    </div>
<%
    ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>
    <div class="container">
        <div class="row" align="center">
            <%
            	for(int i = 0; i<listOfProducts.size();i++){
                    Product product = listOfProducts.get(i);
            %>
            <div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">제품 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>

                <h3>
                    <%=product.getPname()%>
                </h3>
                <p>
                    <%=product.getDescription()%>
                </p>
                <p>
                    <%=product.getUnitPrice()%>원
                </p>
            </div>
            <%
            	}
            %>
        </div>
        <
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