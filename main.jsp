<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
			<title>Shop</title>
			<link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
	</head>
	
	<body>
	
	<div id="header">
		<a href="Shop.xhtml">
			<h1 class="head">Big O Doughnuts</h1>
		</a>
	</div>
	
	<div id="main">
		<div id="NavBar">
		
				<ul>
					<a href="Shop.xhtml">	
						<li>Main Shop</li>
					</a>
					
					<a href="New2017Collection.xhtml">
						<li>New 2017 Collection</li>
					</a>
					
					<a href="WeddingCollection.xhtml">
						<li>Wedding Collection</li>
					</a>
					
					<a href="Delivery.xhtml">
						<li>Delivery</li>
					</a>
					
					<a href="ActualOrderPage.xhtml">
						<li>Order Page</li>
					</a>
					
					<a href="AboutUs.xhtml">
						<li>About Us</li>
					</a>
					
				</ul>	
		</div>
		
		<h1 style="text-align:center;">"Making you O since 1789"</h1>
		<img id="home" src="home.jpg"/>
		<br/>
		
		<h1 style="text-align:center;">Confirmation of Order</h1>
				
		<h2 style="text-align:center;">Personal Details</h2>
		
		<div id="details">
				<strong>First Name:</strong> <%= request.getParameter("firstname")%><br/>
				<br/>
				<strong>Last  Name:</strong> <%= request.getParameter("familyname")%><br/>
				<br/>
				<strong>Email Address:</strong> <%= request.getParameter("email")%><br/>
				<br/>
				<strong>Mobile Number:</strong> <%= request.getParameter("mobilenumber")%><br/>
			
		</div>
		
		<h2 style="text-align:center;">Delivery Address Details</h2>
				
		<div id="details">
				<strong>Address Line 1:</strong> <%= request.getParameter("firstname")%><br/>
				<br/>
				<strong>Address Line 2:</strong> <%= request.getParameter("familyname")%><br/>
				<br/>
				<strong>City:</strong> <%= request.getParameter("email")%><br/>
				<br/>
				<strong>Postcode:</strong> <%= request.getParameter("mobilenumber")%><br/>
		</div>
		<br/>
		<br/>
	</body>
	
	
</html>
