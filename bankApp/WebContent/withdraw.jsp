<%@ include file="menu.jsp"%>
<body onload='activeLink("withdraw")'>
<form action='withdraw_money.jsp'>
<table align="center">
<tr>
<td class='logintd'>Enter amount:</td>
<td><input type="text" name='amount' class='tb' required></td>
<td><input type='submit' class='bt' value='Withdraw'></td>
</table>
</form>
</body>