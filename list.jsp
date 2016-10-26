<%@ page import="java.util.*" %>
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
					
					<a href="AboutUs.xhtml">
						<li>About Us</li>
					</a>
				</ul>	
		</div>
		
		<h1 style="text-align:center;">Your Shopping Cart</h1>
		

<% if ( session.getAttribute("list1") == null && session.getAttribute("list2") == null && session.getAttribute("list3") == null){
	session.setAttribute("list1", new Vector());
	session.setAttribute("list2", new Vector());
	session.setAttribute("list3", new Vector());
   }
     
   Vector list1 = (Vector)session.getAttribute("list1");
   Vector list2 = (Vector)session.getAttribute("list2");
   Vector list3 = (Vector)session.getAttribute("list3");
   

   int item = Integer.parseInt(request.getParameter("item"));
   String name = request.getParameter("donut");
   int price = Integer.parseInt(request.getParameter("price"));
   if ( name != null && name != ""  )
     list1.addElement(item);
     list2.addElement(name);
     list3.addElement(price * item);
   String pick = request.getParameter("pick");
   if ( pick != null && pick.equals("on") ) {
%>
  <jsp:forward page="main.jsp" />
<%} else {%>
  <h3>List of Items</h3>
  <p>
<% if ( list1 != null ){
	int totalprice = 0;
    	for (int i=0; i<list1.size(); i++){
        out.println((int)list1.elementAt(i) + "x ");
	out.print(" " + (String)list2.elementAt(i));
	out.print(" - " + (int)list3.elementAt(i) + " Smackaroonies" + "<br/>" + "<br/>");
	totalprice = totalprice + (int)list3.elementAt(i);
	
    	}
	out.println("Total Price is " + totalprice + " Smackaroonies" + "<br/>" + "<br/>");
	}
	
  

%>
<a href="ActualOrderPage.xhtml">
    <input type=submit value="Check Out">
</a>
  
<%}%>
<a href="Shop.xhtml">
<input type=submit value="Continue Shopping" >
</a>
</div>
</body>
</html>
