<html>
<link href='Css/style.css' rel='stylesheet'>
<script src="js/validate.js"></script>
<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.jsp");
	return;
}
%>
<img src='images/bank_img.jpg' style='width:100%;height:30%'>
<hr style='border:2px solid red'>
<table style='width:100%' align="center">
<%
String na=(String)session.getAttribute("username");
String an=(String)session.getAttribute("accountno");
%>
<tr>
<td class='logintd'>Account holder name:<font color='blue'><%=na %></td>
<td class='logintd' align="right">AccountNo:<font color='blue'><%=an %></td>
</tr>
</table>
<hr style='border: 2px solid red'>
<table style='width:100%'>
<tr>
<td><a id='home' class='mna' href='/bankApp'>Home</a></td>
<td><a id='balance' class='mna' href='ShowBalance.jsp'>Show Balance</a></td>
<td><a id='deposit' class='mna' href='Deposit.jsp'>Deposite money</a></td>
<td><a id='withdraw' class='mna'  href=withdraw.jsp>Withdraw money</a></td>
<td><a id='transfer' class='mna' href='transfer.jsp'>Transfer money</a></td>
<td><a id='cp' class='mna' href='password_form.jsp'>Change password</a></td>
<td><a class='mna' href='logout.jsp'>Logout</a></td>
</tr>
</table>
<hr style='border:2px solid red'>
<br><br>
</html>