<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ include file="fac.jsp" %>
<br><br>
<h2 align=center><u>List of Companies For Placement Activities</u></h2>
<br><br><center>
<table width=700px style="font-size:20px; border-style:solid;" ><tr><th>Company ID</th><th>Company Name</th><th>Date of Visit</th></tr>
<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
         String value = session.getAttribute("user name").toString();
         String value1 = session.getAttribute("Emp ID").toString();
		 String fname="",lname="",cid="",date="",month="",year="",cname="";
		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            Statement stmtn = conn.createStatement();

			ResultSet rs,rsn;
      rs = stmt.executeQuery("select * from emp where eid='"+value1+"' ");
	    		    while ( rs.next() ) 
				{
                 fname = rs.getString("fname");
				lname = rs.getString("lname");
				}
      rs = stmt.executeQuery("select * from place_day_basic_details ");
	    		    while ( rs.next() ) 
				{
                 cid = rs.getString("cid");
				date = rs.getString("date");
                 month = rs.getString("month");
				year = rs.getString("year");
			      rsn = stmtn.executeQuery("select cname from company where cid='"+cid+"' ");
while(rsn.next())
					{
	cname=rsn.getString("cname");
				%>
				<tr><td align=center><%=cid%></td><td align=center><a href=place_basic_edit.jsp?cid=<%=cid%>><%=cname%></a></td><td align=center><%=date%>-<%=month%>-<%=year%></td></tr>
				<%
				}
								}




            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
}
%>

</table>
</center>
</body>
</html>