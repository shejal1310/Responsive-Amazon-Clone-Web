<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.amazon.user.RegisterUser"%>
<%@ page import="com.amazon.product.Product"%>
<%@ page import="com.amazon.product.ProductDAO"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Amazon Clone - Products</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<style>
    body {
        font-family: 'Amazon Ember', Arial, sans-serif;
        background-color: #f3f3f3;
    }

    .site-header {
        background-color: #131a22;
        color: #ffffff;
        padding: 10px 0;
    }

    .site-header .logo img {
        height: 30px;
         margin-right:10px;
        
    }

    .search-bar input[type="text"] {
        padding: 5px;
        border: none;
        width: 300px;
        margin-right:10px;
        border-radius: 3px;
    }

    .search-bar button {
        padding: 10px 20px;
        background-color: #febd69;
        border: none;
        margin-right:10px;
        border-radius: 3px;
        color: #131a22;
        cursor: pointer;
    }

    .site-nav ul {
        list-style-type: none;
        display: flex;
        margin: 0;
        padding: 0;
    }

    .site-nav ul li {
        margin-right: 20px;
    }

    .site-nav ul li a {
        color: #ffffff;
        text-decoration: none;
        font-size: 16px;
    }

    .user-info {
        margin-left: auto;
        display: flex;
        align-items: center;
    }

    .user-info span {
        margin-right: 15px;
        font-size: 16px;
    }

    .user-info a {
        color: #ffffff;
        text-decoration: none;
        font-size: 16px;
    }

    .container {
        max-width: 1200px;
        margin: 20px auto;
        padding: 0 15px;
    }

    .products-container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
        gap: 20px;
    }

    .product {
        border: 1px solid #ddd;
        background-color: #fff;
        padding: 15px;
        border-radius: 4px;
        transition: transform 0.3s;
    }

    .product:hover {
        transform: scale(1.05);
    }

    .product img {
        max-width: 100%;
        height: auto;
        margin-bottom: 15px;
    }

    .product h3 {
        font-size: 18px;
        margin-bottom: 10px;
        color: #333;
    }

    .product p {
        margin-bottom: 10px;
        color: #555;
    }

    .product .button-container {
        display: flex;
        justify-content: space-between;
    }

    .product button {
        padding: 10px;
        background-color: #febd69;
        border: none;
        border-radius: 3px;
        color: #131a22;
        cursor: pointer;
        flex: 1;
        margin-right: 5px;
    }

    .product button:last-child {
        margin-right: 0;
    }

    .site-footer {
        background-color: #131a22;
        color: #ffffff;
        padding: 20px 0;
        margin-top: 20px;
        text-align: center;
    }

    .footer-nav ul {
        list-style-type: none;
        display: flex;
        justify-content: center;
        margin: 0;
        padding: 0;
    }

    .footer-nav ul li {
        margin-right: 20px;
    }

    .footer-nav ul li a {
        color: #ffffff;
        text-decoration: none;
        font-size: 14px;
    }

    .footer-nav ul li a:hover {
        text-decoration: underline;
    }

    .copyright {
        margin-top: 10px;
        font-size: 14px;
    }
</style>
</head>
<body>
<!-- Header -->
<header class="site-header">
    <div class="container">
        <div class="header-content d-flex align-items-center">
            <div class="logo">
                <img src="images/logo.png" alt="Amazon Logo">
            </div>
            <div class="search-bar d-flex">
                <input type="text" placeholder="Search...">
                <button>Search</button>
            </div>
            <nav class="site-nav">
                <ul class="d-flex">
                    <li><a href="Home.jsp">Home</a></li>
                    <li><span>Welcome, ${param.name}</span></li>
                </ul>
            </nav>
            <div class="user-info d-flex align-items-center">
                
                <a href="login.html">Sign Out</a>
            </div>
        </div>
    </div>
</header>

<main class="container">
    <h1>Available Product List</h1>
    <div class="products-container">
        <%
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.getProductList();
        for (Product product : products) {
        %>
        <div class="product">
            <img src="images/<%=product.getImageName()%>" alt="<%=product.getProductName()%>">
            <h3><%=product.getProductName()%></h3>
            <p><strong>Category:</strong> <%=product.getCategory()%></p>
            <p><strong>Price:</strong> Rs: <%=product.getPrice()%></p>
            <div class="button-container">
                
                <form action="UserCheckOut" method="post">
                    <input type="hidden" name="productId" value="<%=product.getId()%>">
                    <input type="hidden" name="name" value="${param.name}">
                    <input type="hidden" name="id" value="${param.id}">
                    <button type="submit">Buy Now</button>
                </form>
            </div>
            <%=product.getId()%>
        </div>
        <%
        }
        %>
    </div>
</main>

<footer class="site-footer">
    <div class="container">
        <nav class="footer-nav">
            <ul class="d-flex justify-content-center">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a href="#">Terms of Service</a></li>
            </ul>
        </nav>
        <div class="copyright">&copy; 2024 Your Amazon Clone Project</div>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="app.js"></script>
</body>
</html>