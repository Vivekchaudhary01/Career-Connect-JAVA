<%@ page import="java.sql.*" %>

<%@ page session="false" %>


<%@ include file="head.jsp" %>
<%@ include file="stu_menu.jsp" %>
<br><br>




<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
		   String sid = session.getAttribute("Student ID").toString();

		 String fname="",lname="",usn="",pwd="",date="",month="",year="",gender="",hno="",bn="",city="",state="",pin="",cno="",email="",faname="",rollno="",course="",branch="",year1="",p10="",p12="",pbtech="",b1="",b2="",b3="",b4="",b5="",b6="",b7="",b8="";
;
//String eid=request.getParameter("eid");

		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from student where sid='"+sid+"' ");
	    		    while ( rs.next() ) 
				{
                 fname = rs.getString("fname");
				lname = rs.getString("lname");
								faname = rs.getString("faname");
				rollno = rs.getString("rollno");

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
				usn = rs.getString("usn");
                pwd= rs.getString("pwd");

				}
				      rs = stmt.executeQuery("select * from stu_academic where sid='"+sid+"' ");
	    		    while ( rs.next() ) 
				{
                 course = rs.getString("course");
				branch = rs.getString("branch");
								year1 = rs.getString("year");
				p10 = rs.getString("p10");

				p12 = rs.getString("p12");
                 pbtech = rs.getString("pbtech");
				b1= rs.getString("b1");
                 b2 = rs.getString("b2");
				b3 = rs.getString("b3");
                 b4 = rs.getString("b4");
				b5 = rs.getString("b5");
                 b6 = rs.getString("b6");
				b7 = rs.getString("b7");
				b8 = rs.getString("b8");

				}

            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }


%><h1 align=center>Details</h1>
<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
 <tr><th><h2>Personal Details</h2></th></tr>

	<tr><td><b>First Name</b></td><td><%=fname%>&nbsp;<%=lname%></td> </tr>
		<tr><td><b>Father's name</b></td><td><%=faname%></td></tr>
	<tr><td><b>Roll no.</b></td><td><%=rollno%></td></tr>

<tr><td><b>DOB</b></td><td><%=date%>-<%=month%>-<%=year%></td></tr>
<tr><td><b>Gender</b></td><td><%=gender%></td></tr>

   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
	 <tr><th><h3>Address</h3></th></tr>
<tr><td><b>House number</b></td><td><%=hno%></td></tr>
<tr><td><b>Street/block Name</b></td><td><%=bn%></td></tr>
<tr><td><b>City</b></td><td><%=city%></td></tr>
<tr><td><b>State</b></td><td><%=state%></td></tr>
<tr><td><b>Pin code</b></td><td><%=pin%></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
 <tr><th><h3>Contact</h3></th></tr>
<tr><td><b>Contact Number</b></td><td><%=cno%></td></tr>
<tr><td><b>Email ID</b></td><td><%=email%></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
    <tr><th><h2>Academic Details</h2></th></tr>

<tr><td><b>Course</b></td><td><%=course%></td></tr>
<tr><td><b> Branch</b></td><td><%=branch%></td></tr>
<tr><td><b>Year</b></td><td><%=year1%></td></tr>
<tr><td><b>10th Percentage</b></td><td><%=p10%></td></tr>
<tr><td><b>12th Percentage</b></td><td><%=p12%></td></tr>
<tr><td><b>BTech</b></td><td><%=pbtech%></td></tr>
<tr><td><h3>No. of Back logs</h3></td></tr>
<tr><td><b>1st semester</b></td><td><b>2nd semester</b></td><td><b>3rd semester</b></td><td><b>4th semester</b></td></tr>
<tr><td><%=b1%></td><td><%=b2%></td><td><%=b3%></td><td><%=b4%></td></tr>

<tr><td><b>5th semester</b></td><td><b>6th semester</b></td><td><b>7th semester</b></td><td><b>8th semester</b></td></tr>
<tr><td><%=b5%></td><td><%=b6%></td><td><%=b7%></td><td><%=b8%></td></tr>





<tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>

</body>
</html>
<%}%>
