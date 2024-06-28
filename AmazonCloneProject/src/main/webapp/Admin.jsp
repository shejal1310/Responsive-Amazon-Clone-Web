<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazon Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }
        .header {
            background-color: #232f3e;
            color: white;
            padding: 10px 0;
        }
        .header img {
            height: 35px;
            margin-left: 20px;
        }
        .header h1 {
            display: inline;
            margin: 0 20px;
            font-size: 24px;
        }
        .header .admin-links {
            float: right;
            margin-right: 20px;
        }
        .header .admin-links a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-size: 14px;
        }
        .header .admin-links a:hover {
            text-decoration: underline;
        }
        .product-management, .user-orders {
            border: 1px solid #ccc;
            padding: 20px;
            margin-bottom: 20px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
        .footer a {
            color: #ddd;
            text-decoration: none;
            margin: 0 15px;
            font-size: 14px;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="images/amzlogo.png" alt="Amazon Logo">
        <h1>Admin Panel</h1>
        <div class="admin-links">
            <a href="Admin.html">Admin Home</a>
            <a href="AdminLogin.html">Logout</a>
        </div>
    </div>

    <div class="container">
        <!-- Product Management Section -->
        <div class="product-management">
            <h2>Product Management</h2>
            <a href="AddProduct.jsp" class="btn">Add New Product</a>
            <table>
                <thead>
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Category</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.productName}</td>
                            <td>${product.price}</td>
                            <td>${product.category}</td>
                            <td>${product.qty}</td>
                            <td>
                                
                                <a href="DeleteProduct?id=${product.id}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- User Orders Section -->
        <div class="user-orders">
            <h2>User Orders</h2>
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>User ID</th>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Category</th>
                        <th>Quantity</th>
                        <th>Total Amount</th>
                        <th>Order Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="order" items="${orders}">
                        <tr>
                            <td>${order.id}</td>
                            <td>${order.userId}</td>
                            <td>${order.productId}</td>
                            <td>${order.productName}</td>
                            <td>${order.category}</td>
                            <td>${order.quantity}</td>
                            <td>${order.totalAmount}</td>
                            <td>${order.orderDate}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div class="footer">
        <p>
            <a href="#">Conditions of Use</a> | 
            <a href="#">Privacy Notice</a> | 
            <a href="#">Help</a>
        </p>
        <p>© 1996-2024, Amazon.com, Inc. or its affiliates</p>
    </div>
</body>
</html>
