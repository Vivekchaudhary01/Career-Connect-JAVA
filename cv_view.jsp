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

String fname="",lname="",roll_no="",obj="",pl="",os="",eca="",tai="",pro="",aoi="",hob="",sth="",tum="";
		try
		{
			String url = "jdbc:mysql://localhost:3306/training";
			Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
rs=stmt.executeQuery("SELECT * FROM cv WHERE sid='"+value1+"'");
while(rs.next())
			{
	fname=rs.getString("fname");
	lname=rs.getString("lname");
	roll_no=rs.getString("roll_no");
	obj=rs.getString("obj");
	pl=rs.getString("pl");
	os=rs.getString("os");
	eca=rs.getString("eca");
	tai=rs.getString("tai");
	pro=rs.getString("pro");
	aoi=rs.getString("aoi");
	hob=rs.getString("hob");
	sth=rs.getString("sth");
	tum=rs.getString("tum");
			}
conn.close();
	}catch(Exception e){
		System.out.println("Got an Exception");
		out.println(e);
	}
%>
<br>	<center><div class="title"><h2>CV</h2></div></center>

	<div align=left><h2><b><%=fname%>&nbsp;<%=lname%></h2>
ROLL NO.:<%=roll_no%></b></div>
<br>
<hr>
<br>
<center><table cellpadding="5px" style=" border-style:solid; font-size:20px;">
<form style="background-color:#ffffff;font-size:17px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;color:#666666;max-width:100%;min-width:150px" action="cv_ud.jsp">
	<tr><td><b>CAREER OBJECTIVE:&nbsp;&nbsp;</b></td><td><%=obj%></td></tr>
	<tr><td><b>PROGRAMMING LANGUAGES:&nbsp;&nbsp;</td><td><%=pl%></td></tr><tr><td><b>OTHER SKILLS:&nbsp;&nbsp;</b></td><td><%=os%></td></tr><tr><td><b>EXTRA CURRICULAR ACTIVITY:&nbsp;&nbsp;</b></td><td><%=eca%></td><tr><td><b>TRAINING AND INTERNSHIPS:&nbsp;&nbsp;</b></td><td><%=tai%></td></tr><tr><td><b>PROJECTS:&nbsp;&nbsp;</b></td><td><%=pro%></td></tr><tr><td><b>AREA OF INTREST:&nbsp;&nbsp;</b></td><td><%=aoi%></td></tr><tr><td><b>HOBBIES:&nbsp;&nbsp;</b></td><td><%=hob%></td></tr><tr><td><b>STRENGTH:&nbsp;&nbsp;</b></td><td><%=sth%></td></tr><tr><td><b>TELL US MORE:&nbsp;&nbsp;</b></td><td><%=tum%></td></tr>
	</center>
<%}%>
</table>
</body>

</html>


