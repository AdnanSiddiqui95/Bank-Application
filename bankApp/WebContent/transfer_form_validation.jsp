<%@ include file='conn.jsp'%>
<form>
<%
String rec=request.getParameter("account");
String cur=(String)session.getAttribute("accountno");
if(rec.equals(cur))
{
	%>
	<jsp:include page="transfer.jsp"></jsp:include>
	<h3 class='logintd' style='color:red' align="center">You can't transfer money into your own account <%=cur %></h3>
	<% 
	return;
}
%>
<%
String query="select accountno from accountinfo where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,rec);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	session.setAttribute("ra",rec);
	response.sendRedirect("transfer_amount.jsp");
}
else{
	%>
	<jsp:include page="transfer.jsp"></jsp:include>
	<h3 class='logintd' style='color:red' align="center">Dear user given accountno <%=rec%> does not exist</h3>
	<% 
}
%>
</form>