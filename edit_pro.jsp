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

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=edit_prodb.jsp name=About>
<!--<input type=hidden name=eid value="<%=eid%>")-->
	<tr><td><br><b>First Name</b></td><td><br><input type=text name=n1 value="<%=fname%>"></td>
	<td><br><input type=text name=n2 value="<%=lname%>"> </td> </tr>
	<tr><td><b><br>Username</b></td><td><br><input type=text name=n3 value="<%=usn%>"></td></tr>
	<tr><td><b><br>Password</b></td><td><br><input type=password name=n4 value="<%=pwd%>"></td>
</tr>
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
	
 <tr><th>Address</th></tr>
<tr><td><b>House number</b></td><td><input type="text" name="n9" value="<%=hno%>"  /></td></tr>
<tr><td><b>Street/block Name</b></td><td><input type="text" name="n10" value="<%=bn%>" /></td></tr>
<tr><td><b>City</b></td><td><input type="text" name="n11"  value="<%=city%>"  /></td></tr>
<tr><td><b>State</b></td><td><input type="text" name="n12" value="<%=state%>" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name="n13" value="<%=pin%>" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
 <tr><th>Contact</th></tr>
<tr><td><b>Contact Number</b></td><td><input type="text" name="n14" value="<%=cno%>" /></td></tr>
<tr><td><b>Email ID</b></td><td><input type="text" name="n15" value="<%=email%>" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><b>Qualification(highest)</b></td><td><input type="text" name="n16" value="<%=qual%>"  /></td></tr>
<tr><td><b>Experience</b></td><td><input type="text" name="n17" value="<%=exp%>" /></td></tr>

	<tr><td><br><b>CDC Designation<b></td><td><br><select name=n18><option value="">Select</option>
	<option value=""></option>
<%	if(des.equals("Head")){%>
	<option value="Head" selected>Head</option>
	<%} else {%>
		<option value="Head" >Head</option>
		<%}%>
		<%	if(des.equals("Manager")){%>
	<option value="Manager" selected>Manager</option>
	<%} else {%>
		<option value="Manager" >Manager</option>
		<%}%>
<%	if(des.equals("Assitant Manager")){%>
	<option value="Assitant Manager" selected>Assitant Manager</option>
	<%} else {%>
		<option value="Assitant Manager" >Assitant Manager</option>
		<%}%>
<%	if(des.equals("Faculty")){%>
	<option value="Faculty" selected>Faculty</option>
	<%} else {%>
		<option value="Faculty" >Faculty</option>
		<%}%>

	</select></td>
</tr>
<tr><td><input type=Submit value=UPDATE ></td></tr></form></table>
</center>
<%}%>