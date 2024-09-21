<%@ include file="conn.jsp" %>
<%
String ep=request.getParameter("pass");
String cp=(String)session.getAttribute("pass");
if(!cp.equals(ep))
{
	response.sendRedirect("password_form.jsp?msg=fail");
	return;
}
%>
<jsp:forward page="newpassword.jsp"></jsp:forward>