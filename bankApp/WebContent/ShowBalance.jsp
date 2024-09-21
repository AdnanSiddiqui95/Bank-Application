<%@ include file="conn.jsp" %>
<%@ include file="menu.jsp"%>
<%
String query="select amount from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,(String)session.getAttribute("accountno"));
ResultSet rst=ps.executeQuery();
rst.next();
String amount=rst.getString(1);

%>
<body onload='activeLink("balance")'>
<h3 class='logintd' align="center">Your current amount is &#8377;<%=amount %></h3>
</body>