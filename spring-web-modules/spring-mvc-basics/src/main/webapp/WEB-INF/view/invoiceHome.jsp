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
			</tr>
			<tr>
				<td><form:label path="concept">Concept: </form:label></td>
				<td><form:input path="concept" /></td>
				<td><form:errors path="concept" cssClass="error" /></td>
			</tr>
			<tr>
				<td><form:label path="amount">Amount: </form:label></td>
				<td><form:input path="amount" /></td>
			</tr>
			<tr>
				<td><form:label path="retention">Retention: </form:label></td>
				<td><form:input path="retention" /></td>
			</tr>
			<tr>
            	<td><form:label path="date">Date (MM/dd/yyyy): </form:label></td>
            	<td><form:input path="date" type="text" /></td>

            </tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</body>

</html>