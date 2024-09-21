<%@ include file="menu.jsp"%>
<body onload='activeLink("deposit")'>
<form action='Deposit-money.jsp'>
<table align="center">
<tr>
<td class='logintd'>Enter amount:</td>
<td><input type='text' name='amount' class='tb' id='tb' required>
</td>
<td><input type='submit' class='bt' value='Deposit' > </td>
</tr>
<tr>
<td colspan="3" align="center">
<span id="error" style='color:red; font-size:19px'></span>
</td>
</tr>
</table>
</form>
</body>
