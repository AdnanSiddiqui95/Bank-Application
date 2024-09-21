<%@ include file="conn.jsp"%>
<%
String userid=request.getParameter("uid");
String password=request.getParameter("pass");
String name=request.getParameter("name");
String accountno=request.getParameter("account");
String amount=request.getParameter("amount");
//Checking for duplicacy
String query1="select * from accountinfo where userid=? and accountno=?";
PreparedStatement ps1=cn.prepareStatement(query1);
ps1.setString(1,userid);
ps1.setString(2,accountno);
ResultSet rst=ps1.executeQuery();
if(rst.next())
{
	%>
	<jsp:include page="SignUP.jsp"></jsp:include>
	<h3 style="color:red" align="center">Dear <%=name %> UserId or AccountNo  already exists</h3>
	<%
	return;
}
//Duplicacy
String query="insert into accountinfo values(?,?,?,?,?)";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,userid);
ps.setString(2,password);
ps.setString(3,name);
ps.setString(4,accountno);
ps.setString(5,amount);
ps.executeUpdate();
%>

<jsp:include page="login.jsp"></jsp:include>
<h2 style="Color:black" align="center">Dear <%=name%> you have been successfully register</h2>