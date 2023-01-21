<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

   String name = request.getParameter("name");
   String address = request.getParameter("address");
   String city = request.getParameter("city");
   String email = request.getParameter("email");
   String phone = request.getParameter("phone");
   
   String crust = request.getParameter("crust");
   String size = request.getParameter("size");
   String[] topping = request.getParameterValues("topping");
   String memo = request.getParameter("memo");
   
   String toppings = "";

   for(int i = 0; i < topping.length; i++){
	   toppings += "<div class=\"tps\">" + topping[i] + "</div>";
   }
   
%>
<html>
<head>
<title>Insert title here</title>
<style>
	* {box-sizing: border-box;}
	
	#main {
		margin: 10px;
		border: solid 3px rgb(245, 126, 59);
		width: 300px;
		box-shadow: 2px 2px 2px 2px rgb(163, 154, 147);
		border-radius: 10px;
	}
	
	
	#head {
		display: grid;
		grid-template-columns:1fr;
		background-color: rgb(250, 199, 170);
		text-align: center;
		border-radius: 7px;
	}

	}
	
	#info {
		display: grid;
		grid-template-columns:1fr;
		
	}
	
	#order {
		grid-template-columns:1fr;
		
	}
	
	.middletitle {
		display: grid;
		padding: 10px;
		background-color: rgb(255, 245, 240);
		border-radius: 7px;
	}
	
	#tp {
		display: grid;
	}
	
	#tp > .tps {
		padding-left: 10px;
		
	}
	
</style>
</head>
<body>
	<div id="main">
		<div id="head"><h1>Order Summary</h1></div>
		<div id="dt" class="middletitle"><h3>Deliver to</h3>
		  <div class="info"><%=name %></div>
	      <div class="info"><%=city %></div>
	      <div class="info"><%=email %></div>
	      <div class="info"><%=phone %></div>
		</div>
		<div class="middletitle"><h3>Order</h3>
			<div class="order"><b>Crust:</b> <%=crust %></div>
			<div class="order"><b>Size:</b> <%=size %></div>
			<div class="order" id="tp"><b>Topping(s):</b> <%=toppings %></div>
			<div class="order"><b>Instruction:</b> <%=memo %></div>
		</div>
	</div>
</body>
</html>