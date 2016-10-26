<%@ page import="java.util.*" %>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
	<head>
		<title>Shop</title>
		<link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
	</head>
	
	<body>
	<% if ( session.getAttribute("list") == null ){
		session.setAttribute("list", new Vector());
	   }
   	Vector list = (Vector)session.getAttribute("list");
   	String item = request.getParameter("item");
   	if ( item != null && ! item.equals("") ){
    		list.addElement(item);}
  	String pick = request.getParameter("pick");
   	if ( pick != null && pick.equals("on") ) {
%>
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
		
		<h1 style="text-align:center;">Explore our "Classic" range</h1>
		
		
		<img id="home" src="home.jpg"/>
		
		<table class="reflow">
			<tbody>
				<tr>
					<td>
						<span>Glazed</span>
						<p>Original glazed nuts.</p>
							<form action="http://www2.macs.hw.ac.uk:8080/demo/list.jsp" method="post">
  								<select name="buy">
    								<option name="item"> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 								</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
					
					<td>
						<span>Chocolate</span>
						<p>Smooth chocolate coated nuts.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 						 		</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
					
					<td>
						<span>Sprinkles</span>
						<p>Colourful sprinkled nuts.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 						 		</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>

					<td>
					
						<span>Iced</span>
						<p>Nuts covered in delicate icing.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 						 		</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
				</tr>
				
				<tr>
					<td>
					
						<span>Oreo</span>
						<p>Nuts with an oreo twist.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 							 </select>
  							 <input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
					
					<td>
					
						<span>Sugared</span>
						<p>Nuts sprinkled with a fine sugar.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 						 		</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
					
					<td>
					
						<span>Choco Frosted</span>
						<p>Nuts with a fine frosting.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 						 		</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
					
					<td>
					
						<span>Strawberry</span>
						<p>Juicy strawberry nuts.</p>
							<form action="http://www2.macs.hw.ac.uk/~ns53/WebProgram/Cart" method="post">
  								<select name="buy">
    								<option> 1 </option>
    								<option> 2 </option>
    								<option> 3 </option>
 						 		</select>
  								<input type="submit" value="add to cart"/>
							</form>
						<img class="reflow" src="krispy-kreme-donuts.jpg"/>
					</td>
				</tr>
			</tbody>
		</table>
	
	</div>
 <jsp:forward page="pick.jsp" />
<%} else {%>
  <% if ( list != null ){
     for (int i=0; i<list.size(); i++)
       out.println((String)list.elementAt(i) + "<br>");
}}%>
  <p>
  <form action=http://www2.macs.hw.ac.uk:8080/jpm5/list.jsp
        method=post>
    Add <input name=item size=20> <p>
    Is list complete? <input type=checkbox name=pick> <p>
    <input type=submit value=Continue>
  </form>
	</body>
</html>
