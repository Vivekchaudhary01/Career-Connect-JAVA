<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ include file="fac.jsp" %>

<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
		   String eid = session.getAttribute("Emp ID").toString();

		 String fname="",lname="",usn="",pwd="",date="",month="",year="",gender="",hno="",bn="",city="",state="",pin="",cno="",email="",qual="",exp="",des="";
//String eid=request.getParameter("eid");

		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from emp where eid='"+eid+"' ");
	    		    while ( rs.next() ) 
				{
                 fname = rs.getString("fname");
				lname = rs.getString("lname");
				usn = rs.getString("usn");
                pwd= rs.getString("pwd");
				date = rs.getString("date");
                 month = rs.getString("month");
				year= rs.getString("year");
                 gender = rs.getString("gender");
				hno = rs.getString("hno");
                 bn = rs.getString("bn");
				city = rs.getString("city");
                 state = rs.getString("state");
				pin = rs.getString("pin");
				cno = rs.getString("cno");
                 email = rs.getString("email");
				qual = rs.getString("qual");
                 exp = rs.getString("exp");
				des = rs.getString("des");

				}
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }


%>
<center><h1 style="color:#663300;"><u>Faculty Details</u></h1></center>

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px; width:700px;">
<form action=edit_prodb.jsp name=About>
<!--<input type=hidden name=eid value="<%=eid%>")-->
	<tr><td><br><b>First Name</b></td><td><br><%=fname%>&nbsp;<%=lname%></td> </tr>
<tr><td><b>DOB</b></td><td><%=date%>-<%=month%>-<%=year%></td></tr>
<tr><td><b>Gender</b></td><td><%=gender%></td></tr>

   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
 <tr><th>Address</th></tr>
<tr><td><b>House number</b></td><td><%=hno%></td></tr>
<tr><td><b>Street/block Name</b></td><td><%=bn%></td></tr>
<tr><td><b>City</b></td><td><%=city%></td></tr>
<tr><td><b>State</b></td><td><%=state%></td></tr>
<tr><td><b>Pin code</b></td><td><%=pin%></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
 <tr><th>Contact</th></tr>
<tr><td><b>Contact Number</b></td><td><%=cno%></td></tr>
<tr><td><b>Email ID</b></td><td><%=email%></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><b>Qualification(highest)</b></td><td><%=qual%></td></tr>
<tr><td><b>Experience</b></td><td><%=exp%></td></tr>

	<tr><td><b>CDC Designation<b></td><td><%=des%>
</td>
</tr>
</center>
<%}%>