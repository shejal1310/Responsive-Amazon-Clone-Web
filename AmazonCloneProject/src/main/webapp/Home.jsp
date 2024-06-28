<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Amazon.com-Shop Online</title>

</head>
<body>
	
	<div class="hdn-sign">
		<div class="hdn-table">
			
			<div class="hdn-line"></div>
			<div>
				<h3>Your Account</h3>
				<ul>
				
					<li><a href="yourAcc.jsp?name=${userName}&id=${id}">Account</a></li>
					<li><a href="UserOrder?name=${userName}&id=${id}">Orders</a></li>
					

				</ul>
			</div>
		</div>
	</div>
	<div class="black"></div>
	<header>
		<div class="first">
			<div class="flex logo">
				<a href="#"><img src="images/logo.png" alt=""></a>
				<div class="map flex">
					<i class="fas fa-map-marker"></i>
					<div>
						<span> Deliver to Pune</span> <span>Update Location</span>
					</div>
				</div>
			</div>
			<div class="flex input">
				<div>
					<span>All</span> <i class="fas fa-caret-down"></i>
				</div>
				<input type="text"> <i class="fas fa-search"></i>
			</div>
			<div class="flex right">
				<div class="flex lang">
					<img src="images/flag.png" alt=""> <i
						class="fas fa-caret-down"></i>
				</div>
				<div class="sign">
					<span>Hello, <%=session.getAttribute("userName")%></span>
					
					
				</div>
				<div class="sign">
					<a href="UserAccount.jsp?name=${userName}&id=${id}">Account</a>
					
				</div>
				<div class="sign">
					<a href="404.html">Orders</a>
					
				</div>
				<div class="sign">
					<a href="index.html">Sign Out</a>
					
				</div>
				<div class="sign">
					<a href="404.html">Cart</a>
					
				</div>
			</div>
		</div>
		<div class="second">
			<div class="second-1">
				<div>
					<i class="fas fa-bars"></i> <span>All</span>
				</div>
			</div>
			<div class="second-2">
				<ul>
					<li>Today's Deal</li>
					
					<li>Gift Cards</li>
					<li>Fashion</li>
					<li>Mobile</li>
					<li>Primes</li>
					<li>Amazon Pay</li>
					

				</ul>
			</div>
			<div class="second-3">
				<span>Shop Valentine's Day</span>
			</div>
		</div>
	</header>
	<section class="sec-1">
		<div class="container">
			<div class="container-1">

				<div class="product-comp">
					<div class="box">
						<h3>Gaming Accessories</h3>
						<div class="box-a">
							<div>
								<img src="images/ga1.jpg" alt=""> <span>Headsets</span>
							</div>
							<div>
								<img src="images/ga2.jpg" alt=""> <span>Keyboards</span>
							</div>
							<div>
								<img src="images/ga3.jpg" alt=""> <span>Computer
									mice</span>
							</div>
							<div>
								<img src="images/ga4.jpg" alt=""> <span>Chairs</span>
							</div>
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>

					</div>
					<div class="box">
						<h3>Shop By Category</h3>
						<div class="box-a">
							<div>
								<img src="images/sc1.jpg" alt=""> <span>Laptop</span>
							</div>
							<div>
								<img src="images/sc2.jpg" alt=""> <span>Video Games</span>
							</div>
							<div>
								<img src="images/sc3.jpg" alt=""> <span>Baby</span>
							</div>
							<div>
								<img src="images/sc4.jpg" alt=""> <span>Toy & Games</span>
							</div>
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>
					</div>
					<div class="box box-c">
						<h3>Amazon Basics</h3>
						<div>
							<img src="images/amazon basics.jpg" alt="">
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>
					</div>
					<div class="box-b">
						<div class="best"></div>
						<div>
							<img src="images/banner.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="product-comp">
					<div class="box box-c">
						<h3>Shop Valentine's Day</h3>
						<div>
							<img src="images/shop valentine's.jpg" alt="">
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>
					</div>
					<div class="box box-c">
						<h3>Electronics</h3>
						<div>
							<img src="images/electronics.jpg" alt="">
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>
					</div>
					<div class="box box-c">
						<h3>Find your ideal TV</h3>
						<div>
							<img src="images/find your deal.jpg" alt="">
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>
					</div>
					<div class="box box-c">
						<h3>Easy Returns</h3>
						<div>
							<img src="images/easy return.jpg" alt="">
						</div>
						<a href="Product.jsp?name=${userName}&id=${id}">See More</a>
					</div>
				</div>
			</div>
			<div class="slider">
				<div class="image-box">
					<div class="slide">
						<img src="images/si1.jpg" alt="">
					</div>
					<div class="slide">
						<img src="images/si2.jpg" alt="">
					</div>
					<div class="slide">
						<img src="images/si3.jpg" alt="">
					</div>
					<div class="slide">
						<img src="images/si4.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<section class="footer">
		
		<div class="detail">
			<div class="table">
				<div>
					<div class="t-head">Get to Know Us</div>
					<ul>
						<li>Careers</li>
						<li>Blogs</li>
						<li>About Amazon</li>
						<li>Investor Relations</li>
						<li>Amazon Advices</li>
						<li>Amazon Science</li>
					</ul>
				</div>

				<div>
					<div class="t-head">Make Money with Us</div>
					<ul>
						<li>Sell Product on Amazon</li>
						<li>Sell on Amazon Business</li>
						<li>Sell Apps on Amazon</li>
						<li>Become an Affiliate</li>
						<li>Advertise your Product</li>
						<li>Host an Amazon Hub</li>
					</ul>
				</div>


				<div>
					<div class="t-head">Amazon Payment Product</div>
					<ul>
						<li>Amazon Business Cards</li>
						<li>Shop with Points</li>
						<li>Reload your Balance</li>
						<li>Amazon Currency Converter</li>
					</ul>
				</div>


				<div>
					<div class="t-head">Let Us Help You</div>
					<ul>
						<li>Amazon and COVID-19</li>
						<li>Your Account</li>
						<li>Yoyr Orders</li>
						<li>Shipping Rates and Policies</li>
						<li>Returns and Replacements</li>
						<li>Manage your Content & Devices</li>
						<li>Amazon Assistant</li>
						<li>Help</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="line"></div>
		<div class="copy">
			<span>&copy; Designed By SEJAL</span>
		</div>
		


	</section>
	<script src="app.js"></script>
</body>
</html>