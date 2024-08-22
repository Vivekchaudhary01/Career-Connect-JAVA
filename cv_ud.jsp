<%@ page import="java.sql.*" %>
<%@page session="false"%>

<%@ include file="head.jsp" %>
<%@ include file="stu_menu.jsp" %>


<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
         String value1 = session.getAttribute("Student ID").toString();

String s1=request.getParameter("fname");
String s2=request.getParameter("lname");
String s3=request.getParameter("roll_no");
String s4=request.getParameter("obj");
String s5=request.getParameter("pl");
String s6=request.getParameter("os");
String s7=request.getParameter("eca");
String s8=request.getParameter("tai");
String s9=request.getParameter("pro");
String s10=request.getParameter("aoi");
String s11=request.getParameter("hob");
String s12=request.getParameter("sth");
String s13=request.getParameter("tum");
		try
		{
			String url = "jdbc:mysql://localhost:3306/training";
			Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("UPDATE cv SET fname='"+s1+"',lname='"+s2+"',obj='"+s4+"',pl='"+s5+"',os='"+s6+"',eca='"+s7+"',tai='"+s8+"',pro='"+s9+"',aoi='"+s10+"',hob='"+s11+"',sth='"+s12+"',tum='"+s13+"' WHERE sid='"+value1+"'");
conn.close();
	}catch(Exception e){
		System.out.println("Got an Exception");
		out.println(e);
	}
}
%>
<h2 align=center>Your CV has been udated Successfully<br><a href="student.jsp">click here</a> to go back to your HomePage</h2>
</body>
</html>





