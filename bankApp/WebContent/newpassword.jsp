<%@ include file="menu.jsp"%>
<script src="js/validate.js"></script>
<body onload='activeLink("cp"))'>
<form action='changePassword.jsp' method="post">
<table align="center">
<tr>
<td colspan="2" align="center">
<label id="error" style='color:red;font-size:20px'></label>
</td>
</tr>
<tr>
<td class='logintd'>Enter new password:</td>
<td><input type="password" name='pass1' id="pass1" class='tb' required></td>
</tr>
<tr>
<td class='logintd'>Confirm new password:</td>
<td><input type="text" name='pass2' id="pass2" class='tb' required></td>
</tr>
<tr>
<td colspan="2" align="right">
<input type='submit' class='bt' value='submit' onclick="return matchPassword()">
</td>
</tr>
</table>
</form>
</body>
