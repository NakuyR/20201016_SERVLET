<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="example.*"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")){
        response.sendRedirect("../index.jsp");
        return;
    }

    ProductRepository dao = ProductRepository.getInstance();

    Product product = dao.getProductById(id) ;
    if (product == null) {
        response.sendRedirect("../exception/product_not_found.jsp");
    }

    ArrayList<Product> goodsList = dao.getAllProducts();
    Product goods = new Product();
    for (int i = 0; i<goodsList.size();i++){
        goods = goodsList.get(i);
        if(goods.getProductId().equals(id)){
            break;
        }
    }
    ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Product>();
		session.setAttribute("cartlist", list); // 세션 키, 값 설정
	}

	int cnt = 0;
	Product goodsQnt = new Product();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("product_cart.jsp?id=" + id); // 장바구니 화면 페이지로 이동
%>