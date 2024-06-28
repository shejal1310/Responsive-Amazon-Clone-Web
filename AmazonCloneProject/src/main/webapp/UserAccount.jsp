<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Account - Amazon Clone</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f3f3f3;
            font-family: Arial, sans-serif;
        }
        .header {
            background-color: #232f3e;
            color: white;
            padding: 10px 0;
        }
        .header img {
            height: 30px;
            margin-right: 10px;
        }
        .header h1 {
            display: inline;
            font-size: 24px;
            margin: 0;
        }
        .container {
            margin-top: 30px;
        }
        .account-section {
            border: 1px solid #ddd;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            background-color: white;
            transition: transform 0.3s;
        }
        .account-section:hover {
            transform: scale(1.02);
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .account-section h3 {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            font-size: 18px;
        }
        .account-section h3 img {
            margin-right: 10px;
            height: 30px;
        }
        .account-section a {
            display: block;
            margin-bottom: 10px;
            color: #007bff;
            text-decoration: none;
            font-size: 16px;
        }
        .account-section a:hover {
            text-decoration: underline;
        }
        footer {
            background-color: #232f3e;
            color: white;
            padding: 10px 0;
        }
    </style>
</head>
<body>

<header class="header text-center">
    <a href="Home.jsp">
        <img src="images/logo.png" alt="Amazon Logo">
    </a>
    <h1>Your Account</h1>
</header>

<div class="container">
    <div class="row">
        <div class="col-md-6 account-section">
            <h3><img src="images/s1.png" alt="Logo"> Orders</h3>
            <a href="404.html">Your Orders</a>
            <a href="404.html">Track Orders</a>
            <a href="404.html">Returns & Refunds</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s2.png" alt="Logo"> Login & Security</h3>
            <a href="404.html">Change Email</a>
            <a href="404.html">Change Password</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s3.png" alt="Logo"> Prime</h3>
            <a href="404.html">Manage Prime Membership</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s4.png" alt="Logo"> Gift Cards</h3>
            <a href="404.html">Check Balance</a>
            <a href="404.html">Redeem Gift Card</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s5.png" alt="Logo"> Your Addresses</h3>
            <a href="404.html">Manage Addresses</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s6.png" alt="Logo"> Payment Options</h3>
            <a href="404.html">Manage Payment Methods</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s7.png" alt="Logo"> Customer Service</h3>
            <a href="404.html">Help & Support</a>
        </div>
        <div class="col-md-6 account-section">
            <h3><img src="images/s8.png" alt="Logo"> Back To Home</h3>
            <a href="Home.jsp">HomePage</a>
        </div>
    </div>
</div>

<footer class="text-center">
    <p>© 2024, Amazon Clone</p>
</footer>

</body>
</html>