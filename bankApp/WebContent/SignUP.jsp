<link href='Css/style.css' rel='stylesheet'>
<html>
<body background="images/bank2.jpg">
<form action="registerme.jsp" method="post">
<table class='loginta' >
<tr>
<td colspan="2"><div class='logindv'>User SignUP </div></td>
</tr>
<tr><td class='logintd'>Enter userID:</td><td class='logintd'><input type="text" name='uid' class='tb' required></td></tr>
<tr><td class='logintd'>Enter password:</td><td class='logintd'><input type="password" name='pass' class='tb' required></td></tr>
<tr><td class='logintd'>Enter Name:</td><td class='logintd'><input type="text" name='name' class='tb' required></td></tr>
<tr><td class='logintd'>Enter AccountNo:</td><td class='logintd'><input type="text" name='account' class='tb' required></td></tr>
<tr><td class='logintd'>Enter Amount:</td><td class='logintd'><input type="text" name='amount'  class='tb' placeholder="Number only" required></td></tr>
<tr><td align="right" colspan="2"><button class='bt'>SignUP</button></td></tr>
<tr><td align="left" colspan="3" class='bt'><a href="login.jsp">Login</a></td></tr>
</table>

</form>
</body>
</html>
