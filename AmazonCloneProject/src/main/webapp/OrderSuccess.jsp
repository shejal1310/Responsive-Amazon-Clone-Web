<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }
        .header, .footer {
            background-color: #232f3e;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        .header a, .footer a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 14px;
        }
        .header a:hover, .footer a:hover {
            text-decoration: underline;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        .btn {
            padding: 10px 20px;
            background-color: #ff9900;
            color: white;
            border: none;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            border-radius: 4px;
        }
        .btn:hover {
            background-color: #cc7a00;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <a href="Home.jsp">
            <img src="images/amzlogo.png" alt="Amazon Logo" style="height: 30px;">
        </a>
        <a href="Home.jsp">Home</a>
        <a href="#">Your Orders</a>
        <a href="UserAccount.jsp">Your Account</a>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h2>Order Placed Successfully!</h2>
        <p>Thank you for your purchase. Your order has been placed successfully.</p>
        <a href="Home.jsp" class="btn">Back to Home</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>
            <a href="#">Conditions of Use</a>
            <a href="#">Privacy Notice</a>
            <a href="#">Help</a>
        </p>
        <p>© 1996-2024, Amazon.com, Inc. or its affiliates</p>
    </div>
</body>
</html>
