<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Pizza Order Form</title>
</head>
<body>

	<h1>Pizza Order Form</h1>
	
	<div>
		<h3>Delivery Information</h3>
		Name: <input type="text" name="name" form="pizza-form" value="Mike"/>
		Street Address: <input type="text" name="address" form="pizza-form" value="Guri"/>
	</div>
	
	<div>
		<h3>Order</h3>
		<h4>Crust</h4>
		<input type="radio" value="Thin Crust" name="crust" form="pizza-form" checked> Thin Crust
		<input type="radio" value="Deep Dish" name="crust" form="pizza-form"> Deep Dish <br>
		<h4>Size</h4>
		<select name="size" form="pizza-form">
			<option value="r">Regular</option>
			<option value="m">Medium</option>
			<option value="l" selected>Large</option>
			<option value="f">Family</option>
		</select> <br>
		<h4>Topping(s)</h4>
		<input type="checkbox" value="Pepperoni" name="topping" form="pizza-form" checked> Pepperoni
		<input type="checkbox" value="Sausage" name="topping" form="pizza-form"> Sausage
		<input type="checkbox" value="Green Peppers" name="topping" form="pizza-form" checked> Green Peppers
		<input type="checkbox" value="Onions" name="topping" form="pizza-form"> Onions <br>
		<input type="checkbox" value="Extra cheese" name="topping" form="pizza-form"> Extra cheese <br>
		<h4>Special Instructions<br></h4>
		<textarea name="instructions" cols="30" rows="10" form="pizza-form">Don't drop it!! Don't shack it!</textarea>
	</div>

	<form id="pizza-form" action="./process.jsp" method="POST">
		<input type="submit" value="Preview Order">
	</form>
</body>
</html>