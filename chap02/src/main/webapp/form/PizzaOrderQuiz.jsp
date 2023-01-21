<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	* {box-sizing: border-box;}
	
	
	#main {
		display: grid;
		grid-template-columns:1fr;
        text-align: center;
        background-color: rgb(255, 255, 241);
        width: 95%;
        margin: auto;
        max-width: 700px;
        min-width: 700px;
        box-shadow: 2px 2px 2px 2px gray;
	}
	
	#head {
		color: ;
		text-shadow: 2px 2px 2px gray;
	}
	
	.middleTitle {
		height: 50px;
		padding-left: 10px;
	}
	
	.content {
        text-align: left;
        background-color: rgb(228, 213, 187);
        padding: 10px;
	}
	
	.info {
		display: grid;
		grid-template-columns:1fr 1fr;
		width: 60%;
        padding-left: 15px;
	}
	
	.order {
		padding-left: 30px;
        margin-bottom: 10px;
	}
	
	#button {
		padding: 10px;
		text-align: center;
	}
	
	.text {
		margin: 0px;
	}
	
</style>
</head>

<body>
	<form action="./PizzaQuiz.jsp" method="POST">
	<div id="main">
		<div id="title">
			<h1 id="head">Pizza Order Form</h1>
		</div>	
			<div id="content1" class="content">
				<div class="middleTitle"><h3>Delivery Information</h3></div>
								<div class="info">Name<input type="text" name="name" value="Chris Mullins" size="10"></div>
								<div class="info">Street Address<input type="text" name="address" value="123 Main St"></div>
								<div class="info">City<input type="text" name="city" value="Townsville"></div>
								<div class="info">Email<input type="text" name="email" value="mullins@hotmail.com"></div>
								<div class="info">Phone<input type="text" name="phone" value="123-252-5555"></div>
							
			</div>
			<br />
			<div id="content2" class="content">
				<div class="middleTitle"><h3>Order</h3></div>
					
						<div id="cr" class="order"><h4 class="text">Crust</h4>
							<input type="radio" name="crust" value="Thin Crust"/>Thin Crust
							<input type="radio" name="crust" value="Deep Crust" checked/>Deep Crust
						</div>
						<div id="sz" class="order"><h4 class="text">Size</h4>
							<select id="select" name="size">
								<option value="Regular">Regular</option>
								<option value="Medium" selected>Medium</option>
								<option value="Large">Large</option>
							</select>
						</div>
						<div id="tp" class="order"><h4 class="text">Topping(s)</h4>
							<input type="checkbox" name="topping" value="Pepperoni"/>Pepperoni
							<input type="checkbox" name="topping" value="Sausage"/>Sausage
							<input type="checkbox" name="topping" value="Green Peppers"/>Green Peppers
							<input type="checkbox" name="topping" value="Onions"/>Onions
							<input type="checkbox" name="topping" value="Extra Cheese"/>Extra Cheese
						</div>
						<div id="tp" class="order"><h4 class="text">Special Instruction</h4>
							<textarea rows="3" cols="60" name="memo">Don't drop it!!</textarea>
						</div>
					
			</div>
			
			<div id="button">
				<input type="submit" value="Preview Order">
			</div>
			
	</div>
		
	</form>

</body>
</html>