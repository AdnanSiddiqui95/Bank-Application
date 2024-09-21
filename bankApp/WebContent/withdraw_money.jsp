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
if((balance-wt)<1000)
{
	%>
	<jsp:include page="withdraw.jsp"></jsp:include>
	<h3 class='logintd' style='color:red' align="center">Sorry! you don't have sufficient amount...</h3>
	<% 
	return;
}
String query1="update accountinfo set amount=amount-? where accountno =?";
PreparedStatement ps=cn.prepareStatement(query1);
ps.setString(1,amount);
ps.setString(2,(String)session.getAttribute("accountno"));
ps.executeUpdate();
%>
<jsp:include page="withdraw.jsp"></jsp:include>
<h3 class='logintd' style='color:green' align="center">&#8377;<%=amount %> is debited from your account</h3>
</form>