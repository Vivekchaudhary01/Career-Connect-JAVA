<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ include file="fac.jsp" %>
<br><br>
<%@ include file="menu3/cssmenu/edit_menu.jsp" %>
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


		 String cname="",tentd="",link="",duration="",date="",month="",year="",rtime="",bno="",bn="",city="",state="",pin="",fname="",fid="";
String cid=request.getParameter("cid");
		   				           session.setAttribute("cid", cid);

		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from place_day_basic_details where cid='"+cid+"' ");
	    		    while ( rs.next() ) 
				{
				date = rs.getString("date");
								month = rs.getString("month");
				year = rs.getString("year");

				bno = rs.getString("blockn");
                 bn = rs.getString("buildn");
				city = rs.getString("city");
                 state = rs.getString("state");
				pin = rs.getString("pin");
				fid = rs.getString("fid");
                 fname = rs.getString("fname");
				rtime = rs.getString("rtime");
                duration= rs.getString("duration");
                tentd= rs.getString("tentd");
                link= rs.getString("link");

				}
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }

	   
%>
<center><h2>Basic Details</h2>
<table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=place_basic_editdb.jsp name=About>
<!--<input type=hidden value=<%=cid%>>-->
	<tr><td><br><b>Company ID</b></td><td><%=cid%></td></tr>
<tr><td><b>Date of Visit</b></td><td>
              <select name="n1">
			  <%for(int i=1;i<=31;i++){ 
				  int date1=Integer.parseInt(date);
				  if(date1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
			  			  <option value="<%=i%>"><%=i%>
<%} }%>
			  </select>DD &nbsp&nbsp
			  <select name="n2" value="<%=month%>">
			  <%for(int i=1;i<=12;i++){
						  				 int month1=Integer.parseInt(month);
				  if(month1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
						  			  <option value="<%=i%>"><%=i%>
<% } }  %>
			  </select>MM &nbsp&nbsp
              <select name="n3" value="<%=year%>">
			  <option>Select</option>
			  <%for(int i=2013;i<=2030;i++){
						  				 int year1=Integer.parseInt(year);
				  if(year1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
						  			  <option value="<%=i%>"><%=i%>
<% } }  %>
			  </select>YY
</td></tr>


   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
	 <tr><th><h3>Address</h3></th></tr>
<tr><td><b>Block Name</b></td><td><input type="text" name="n4" value="<%=bno%>"  /></td></tr>
<tr><td><b>Building Name</b></td><td><input type="text" name="n5" value="<%=bn%>" /></td></tr>
<tr><td><b>City</b></td><td><input type="text" name="n6"  value="<%=city%>"  /></td></tr>
<tr><td><b>State</b></td><td><input type="text" name="n7" value="<%=state%>" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name="n8" value="<%=pin%>" /></td></tr>
	   <tr><td><hr /></td><ftd><hr /></td></tr>
   
   <tr><th><h3>Faculties Incharge</h3></th></tr>
   <tr><td><b>Faculty ID</b></td><td><input type="text" name="n9" value="<%=fid%>"  /></td></tr>
<tr><td><b>Faculty Name</b></td><td><input type="text" name="n10" value="<%=fname%>"  /></td></tr>
   <tr><td><hr /></td><td><hr /></td></tr>
   <tr><td><b>Reporting Time</b></td><td><input type="text" name="n11" value="<%=rtime%>" /></td></tr>
<tr><td><b>Duration(approx.)</b></td><td><input type="text" name="n12" value="<%=duration%>" /></td></tr>
   <tr><td><b>Tentative Result Date</b></td><td><input type="text" name="n13" value="<%=tentd%>" /></td></tr>
 <tr><td><b>Profile Link</b></td><td><input type="text" name="n14" value="<%=link%>" /></td></tr>

<tr><td><input type=Submit value=UPDATE ></td></tr></form></table>
</center>
<%}%>

</body></html>