<%@ page import="java.sql.*" %>

<%@ page session="false" %>
   <link rel="stylesheet" href="menu3/cssmenu/styles1.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="menu3/cssmenu/script1.js"></script>


<%@ include file="head.jsp" %>
<%@ include file="stu_menu.jsp" %>
<br><br>
<div id='cssmenu1'>
<ul>
   <li class='active'><a href='stuedit_pro.jsp'>Personal Details</a></li>
   <li><a href='edit_acad.jsp'>Academic Details</a></li>
</ul>
</div>

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

		 String fname="",lname="",usn="",pwd="",date="",month="",year="",gender="",hno="",bn="",city="",state="",pin="",cno="",email="",faname="",rollno="";
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
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }


%>
<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=stuedit_prodb.jsp name=About>
 <tr><th><h2>Personal Details</h2></th></tr>

	<tr><td><br><b>First Name</b></td><td><br><input type=text name=n1 value="<%=fname%>"></td>
	<td><br><input type=text name=n2 value="<%=lname%>"> </td> </tr>
		<tr><td><b><br>Father's name</b></td><td><br><input type=text name=n3 value="<%=faname%>"></td></tr>
	<tr><td><b><br>Roll no.</b></td><td><br><input type=text name=n4 value="<%=rollno%>"></td></tr>

<tr><td><b>DOB</b></td><td>
              <select name="n5">
			  <%for(int i=1;i<=31;i++){ 
				  int date1=Integer.parseInt(date);
				  if(date1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
			  			  <option value="<%=i%>"><%=i%>
<%} }%>
			  </select>DD &nbsp&nbsp
			  <select name="n6" value="<%=month%>">
			  <%for(int i=1;i<=12;i++){
						  				 int month1=Integer.parseInt(month);
				  if(month1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
						  			  <option value="<%=i%>"><%=i%>
<% } }  %>
			  </select>MM &nbsp&nbsp
              <select name="n7" value="<%=year%>">
			  <option>Select</option>
			  <%for(int i=1965;i<=2010;i++){
						  				 int year1=Integer.parseInt(year);
				  if(year1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
						  			  <option value="<%=i%>"><%=i%>
<% } }  %>
			  </select>YY
</td></tr>
<%if(gender.equals("male")){ %>
	<tr><td><b>Gender</td><td><b><br><input type=radio name=n8 value="female">FEMALE</td><td><b><br><input type=radio name=n8 value="male" checked>MALE</td></tr><%}
		else { %>
	<tr><td><b>Gender</td><td><b><br><input type=radio name=n8 value="female" checked>FEMALE</td><td><b><br><input type=radio name=n8 value="male" >MALE</td></tr><%}%>

   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
	 <tr><th><h3>Address</h3></th></tr>
<tr><td><b>House number</b></td><td><input type="text" name="n9" value="<%=hno%>"  /></td></tr>
<tr><td><b>Street/block Name</b></td><td><input type="text" name="n10" value="<%=bn%>" /></td></tr>
<tr><td><b>City</b></td><td><input type="text" name="n11"  value="<%=city%>"  /></td></tr>
<tr><td><b>State</b></td><td><input type="text" name="n12" value="<%=state%>" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name="n13" value="<%=pin%>" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
 <tr><th><h3>Contact</h3></th></tr>
<tr><td><b>Contact Number</b></td><td><input type="text" name="n14" value="<%=cno%>" /></td></tr>
<tr><td><b>Email ID</b></td><td><input type="text" name="n15" value="<%=email%>" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
    <tr><th><h2>Acount Details</h2></th></tr>

   	<tr><td><b><br>Username</b></td><td><br><%=usn%></td></tr>
	<tr><td><b><br>Password</b></td><td><br><input type=password name=n16 value="<%=pwd%>"></td>
</tr>

<tr><td><input type=Submit value=UPDATE ></td></tr></form></table>
</center>
<%}%>