<%@ include file='conn.jsp'%>
<%@ include file="menu.jsp"%>
<% 

String query="update accountinfo set password=? where accountno=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,request.getParameter("pass1"));
ps.setString(2,(String)session.getAttribute("accountno"));
ps.executeUpdate();
%>
<h3 class='logintd' style='color:red' align="center">Your password has been change successfully</h3>