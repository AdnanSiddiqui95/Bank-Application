<%@ include file="conn.jsp"%>
<form>
<%
String amount=request.getParameter("amount");
int wt=Integer.parseInt(amount);
String query="select amount from accountinfo where accountno=?";
PreparedStatement ps1=cn.prepareStatement(query);
ps1.setString(1,(String)session.getAttribute("accountno"));
ResultSet rst=ps1.executeQuery();
rst.next();
int balance=rst.getInt(1);
rst.close();
if((balance-wt)<3000)
{
	%>
	<jsp:include page="transfer_amount.jsp"></jsp:include>
	<h3 class='logintd' style='color:red' align="center">Sorry! you don't have sufficient amount...</h3>
	<% 
	return;
}
String query1="update accountinfo set amount=amount-? where accountno =?";
PreparedStatement ps=cn.prepareStatement(query1);
ps.setString(1,amount);
ps.setString(2,(String)session.getAttribute("accountno"));
ps.executeUpdate();
String query2="update accountinfo set amount=amount+? where accountno =?";
PreparedStatement ps2=cn.prepareStatement(query2);
ps2.setString(1,amount);
ps2.setString(2,(String)session.getAttribute("ra"));
ps2.executeUpdate();
%>
<jsp:include page="transfer.jsp"></jsp:include>
<h3 class='logintd' style='color:green' align="center">Dear <%=session.getAttribute("username")%> &#8377;<%=amount %> has been transfered to accountno <%=session.getAttribute("ra")%></h3>
</form>