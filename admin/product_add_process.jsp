<%@ page contentType = "text/html;charset=utf-8" %>
<%@	page import="dto.Product"	%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.Enumeration" %>

<%
	request.setCharacterEncoding("UTF-8");
	String filename="";
	String realFolder=request.getServletContext().getRealPath("image/product");
	String encType="utf-8";
	int maxSize = 5 * 1024 * 1024;
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy); 
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String unitsInStock = multi.getParameter("unitsInStock");
	String description = multi.getParameter("description");
	String condition = multi.getParameter("condition");
	String category = multi.getParameter("category");
	String manufacturer = multi.getParameter("manufacturer");
    
	Integer price;
	if (unitPrice.isEmpty())
        price=0;
    else
        price =Integer.valueOf(unitPrice);

    long stock;
    if (unitsInStock.isEmpty())
        stock=0;
    else
        stock=Long.valueOf(unitsInStock);
        
    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    ProductRepository dao = ProductRepository.getInstance();

    Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);

	dao.addProduct(newProduct);
	response.sendRedirect("index_ad.jsp");
%>