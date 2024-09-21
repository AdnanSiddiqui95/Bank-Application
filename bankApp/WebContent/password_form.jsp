<%@ include file="menu.jsp"%>
<body onload='activeLink("cp"))'>
<form action='password_validation.jsp'>
<table align="center">
<tr>
<td class='logintd'>Enter current password:</td>
<td><input type="text" name='pass' class='tb' required></td>
<td><input type='submit' class='bt' value='submit'></td>
<tr>
<td colspan="2" align="center">
<%
String msg=request.getParameter("msg");
if(msg!=null)
{
	%>
	<h3 style='color:red'>Current password is incorrect</h3>
	<%
}
%>
</td>
</tr>
</table>
</form>
</body>