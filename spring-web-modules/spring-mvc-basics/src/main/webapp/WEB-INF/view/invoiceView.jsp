<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:formatDate value="${date}" pattern="dd/MM/yyyy" var="fechaFormateada"/>


<html>
<head>
<title>Spring MVC Form Handling</title>
<script>
    function sumarMes(fecha) {
        var partesFecha = fecha.split("/");
        var dia = parseInt(partesFecha[0]);
        var mes = parseInt(partesFecha[1]);
        var ano = parseInt(partesFecha[2]);

        // Sumamos un mes
        mes += 1;
        if (mes > 12) {
            mes = 1;
            ano += 1;
        }

        // Formateamos la fecha
        var nuevaFecha = (dia < 10 ? '0' : '') + dia + '/' + (mes < 10 ? '0' : '') + mes + '/' + ano;
        return nuevaFecha;
    }
</script>
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
			<td>${retention} %</td>
		</tr>
		<tr>
			<td>Date :</td>
			<td>${fechaFormateada}</td>
		</tr>

		<tr>
			<td><b>Total :</b></td>
			<td style="color: #ff1493;"><b>${amountTotal} €</b></td>

		</tr>
        <tr>
            <td><b>PaymentDate :</b></td>
            <td style="color: #ff1493;"><b><script>document.write(sumarMes('${fechaFormateada}'));</script></b></td>
        </tr>
	</table>
</body>
</html>