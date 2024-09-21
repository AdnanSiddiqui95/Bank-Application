<%@ include file="conn.jsp" %>
<%
String v1=request.getParameter("userid");
String v2=request.getParameter("pass");

String query="select * from accountinfo where userid=? and password=?";
PreparedStatement ps=cn.prepareStatement(query);
ps.setString(1,v1);
ps.setString(2,v2);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	Cookie []cookies=request.getCookies();
	if(cookies!=null)
	{
		for(Cookie co:cookies)
		{
			if(co.getName().equals("JSESSIONID"))
			{
				co.setMaxAge(24*60*60);
				co.setPath("/bankApp/");
				response.addCookie(co);
				break;
			}
		}
	} 
	String dpass=rst.getString(2);
	if(v2.equals(dpass))
	{
		session.setMaxInactiveInterval(20);
		String na=rst.getString("name");
		String an=rst.getString("accountno");
		session.setAttribute("username",na);
		session.setAttribute("accountno",an);
		session.setAttribute("pass",v2);
		response.sendRedirect("/bankApp");
		return; 
	}
	
}	
	%>
	<jsp:include page="login.jsp"></jsp:include>
	<div align="center" style='color:black'><h2>User id or Password is incorrect</h2></div>
	