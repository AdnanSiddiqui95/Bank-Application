<%@ include file='conn.jsp'%>

<% 
String amount=request.getParameter("amount");
String query="update accountinfo set amount=amount+? where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,amount);
ps.setString(2,(String)session.getAttribute("accountno"));
ps.executeUpdate();
%>
<<jsp:include page="Deposit.jsp"></jsp:include>
<h3 class='logintd' style='color:red' align="center">&#8377;<%=amount%> is credited into your account</h3>