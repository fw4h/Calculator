<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Output</title>
</head>
<body>
	<div class="outputNumbers">
		<h2>Output</h2>
		<%
			String input1 = request.getParameter("num1");
			String input2 = request.getParameter("num2");
			Double num1 = Double.parseDouble(input1);
			Double num2 = Double.parseDouble(input2);
			Double result = null;
			if (request.getParameter("plus") != null) {
				result = num1 + num2;
			}
			else if (request.getParameter("minus") != null) {
				result = num1 - num2;
			}
			else if (request.getParameter("multiply") != null) {
				result = num1 * num2;
			}
			else if (request.getParameter("divide") != null) {
				result = num1 / num2;
			}
			out.println(result);
		%>
	</div>
</body>
</html>