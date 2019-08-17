<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Basic Calculator</title>
</head>
<body>
	<h1>Basic Calculator</h1>

	<form action="" method="post">
		<div class="inputNumbers">
			<h2 id="num1">Number 1</h2>
			<input type="text" name="num1"
				value="<%=request.getParameter("num1")%>">
			<h2 id="num2">Number 2</h2>
			<input type="text" name="num2"
				value="<%=request.getParameter("num2")%>">
		</div>
		<br>
		<div class="buttons">
			<!-- <ul class="operatorButtons"> -->
			<input type="submit" name="plus" value="+"> <input
				type="submit" name="minus" value="-"> <input type="submit"
				name="multiply" value="x"> <input type="submit"
				name="divide" value="/">
			<!-- </ul> -->
		</div>
	</form>
	<div class="outputNumbers">
		<h2>Result: </h2>
		<%
			if (request.getParameter("num1") == null || request.getParameter("num2") == null) {
				return;
			}
			Double result = null;
			try {
				String input1 = request.getParameter("num1");
				String input2 = request.getParameter("num2");
				Double double1 = Double.parseDouble(input1);
				Double double2 = Double.parseDouble(input2);

				if (request.getParameter("plus") != null) {
					result = double1 + double2;
				} else if (request.getParameter("minus") != null) {
					result = double1 - double2;
				} else if (request.getParameter("multiply") != null) {
					result = double1 * double2;
				} else if (request.getParameter("divide") != null) {
					result = double1 / double2;
				}
			} catch (Exception e) {
				out.println("Error!");
			}
		%>
		<input type="text" name="output" value="<%=result%>">
	</div>
</body>
</html>