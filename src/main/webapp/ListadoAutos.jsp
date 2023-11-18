<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.util.*" %>
    <%@page import="model.TblAuto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listado de Autos</title>
</head>
<body>
<h1 aling="center">
Listado de Autos
</h1>
<table aling= "center">
<tr>
<th>Codigo</th>
<th>Color</th>
<th>Modelo</th>
<th>Placa</th>
</tr>
<%
List<TblAuto> listar =(List<TblAuto>) request.getAttribute("listado");
//apiclamos un bucle for
for (TblAuto lis:listar){
	//apiclamos una condicion 
	if(lis!= null){
		%>
		<tr>
		<td><%=lis.getIdauto() %></td>
		<td><%=lis.getColor() %></td>
		<td><%=lis.getModelo() %></td>
		<td><%=lis.getMotor() %></td>
		</tr>
		<%
	}// fin del if 
}//fin del bucle for
%>
</table>
</body>
</html>