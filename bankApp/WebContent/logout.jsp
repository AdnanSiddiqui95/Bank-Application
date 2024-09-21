<div>
<img src='images/thank_you.jpg' height=250 width=100%>
</div>
<hr style='border:2px solid red'><br>

<div align="center">
<h3 style='color:red;font-size:19px'><%=(String)session.getAttribute("username") %> Thank you for using this app</h3>
<h3>You have successfully logout..</h3>
</div>
<div align="center">
<a href='login.jsp'>Click here for login again</a>
</div>
<%
session.invalidate();
%>