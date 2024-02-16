<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:formatDate value="${date}" pattern="MM/dd/yyyy" var="fechaFormateada"/>

<html>
<head>
<title>Spring MVC Form Handling</title>
</head>
<body>

	<h2>Submitted Invoice Information</h2>
	<h3>${msg}</h3>
	<table>
		<tr>
			<td>Code :</td>
			<td>${code}</td>
		</tr>
		<tr>
			<td>Concept :</td>
			<td>${concept}</td>
		</tr>
		<tr>
			<td>Amount :</td>
			<td>${amount} €</td>
		</tr>
		<tr>
			<td>Retention :</td>
			<td>${retention} €</td>
		</tr>
		<tr>
			<td>Date :</td>
			<td>${fechaFormateada}</td>
		</tr>

		<tr>
			<td>Total :</td>
			<td>${amountTotal} €</td>
		</tr>

	</table>
</body>
</html>