<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form Example - Register an Invoice</title>

</head>
<body>
	<h3>Welcome, Enter The Invoice Details</h3>

	<form:form method="POST" action="/spring-mvc-basics/addInvoice" modelAttribute="invoice">
		<table>
			<tr>
				<td><form:label path="code">Code: </form:label></td>
				<td><form:input path="code" /></td>
				<td style="color: #ff0000;"><b><form:errors path="code" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="concept">Concept: </form:label></td>
				<td><form:input path="concept" /></td>
				<td style="color: #800080;"><b><form:errors path="concept" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="amount">Amount: </form:label></td>
				<td><form:input path="amount" /></td>
				<td style="color: #ffff00;"><b><form:errors path="amount" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="retention">Retention: </form:label></td>
				<td style="color: #00ff00;"><b><form:input path="retention" /></td>
			</tr>
			<tr>
            	<td><form:label path="date">Date: </form:label></td>
            	<td><form:input path="date" type="date" /></td>
            	<td style="color: #0000ff;"><b><form:errors path="date" cssClass="error" /></td>

            </tr>

			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</body>

</html>