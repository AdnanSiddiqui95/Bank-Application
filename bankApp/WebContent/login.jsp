<link href='Css/style.css' rel='stylesheet'>
<script src="js/validate.js"></script>
<%
String userid=request.getParameter("userid");
if(userid==null)
{
	userid="";
}
%>
<body background="images/bank2.jpg" height=400 width=100%>
<form  action="validate_user.jsp" method="post" >
<table class='loginta' >
<tr>
<td colspan="2"><div class='logindv'>User Login Form </div></td>
</tr>
<tr>
<td class='logintd'>Enter UserId</td>
<td class='logintd'><input type='text' id='uid' name='userid' class='tb' value='<%=userid%>'></td>
</tr>
<tr>
<td class='logintd'>Enter your password</td>
<td class='logintd'><input type='password'  id='pass' name='pass' class='tb' required></td>
</tr>
<tr><td colspan="2" align="right">
<input type="submit" value='Login' class='bt' onclick="return checkBlank()">
</td></tr>
<br>
<tr><td colspan="2" align="right">
Don't have account <a href='SignUP.jsp'>SignUP</a>
</td></tr>
</table>
</form>
</body>