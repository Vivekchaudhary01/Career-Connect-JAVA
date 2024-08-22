<%@ page import="java.sql.*" %>

<%@ page session="false" %>
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

		 String course="",branch="",year="",p10="",p12="",pbtech="",b1="",b2="",b3="",b4="",b5="",b6="",b7="",b8="";
//String eid=request.getParameter("eid");

		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from stu_academic where sid='"+sid+"' ");
	    		    while ( rs.next() ) 
				{
                 course = rs.getString("course");
				branch = rs.getString("branch");
								year = rs.getString("year");
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


%>

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=edit_acadb.jsp name=About>
 <tr><th><h2>Academic Details</h2></th></tr>


<%if(course.equals("BTech")){ %>
<tr><td><b>Course</b></td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=BTech  checked>B.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MTech >M.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MBA >MBA</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MCA >MCA</td></tr>
<%}
		else if (course.equals("MTech")) { %>
<tr><td><b>Course</b></td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=BTech >B.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MTech checked >M.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MBA >MBA</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MCA >MCA</td></tr>
<%}
		else if (course.equals("MBA")) { %>
<tr><td><b>Course</b></td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=BTech >B.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MTech  >M.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MBA checked >MBA</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MCA >MCA</td></tr>
<%}
		else if(course.equals("MCA")) { %>
<tr><td><b>Course</b></td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=BTech >B.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MTech >M.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MBA >MBA</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MCA checked>MCA</td></tr>

<%}
if(branch.equals("CS")){ %>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS" selected>CS</option>
	<option value="IT">IT</option>
	<option value="CSD">CSD</option>
	<option value="CSE">CSE</option>
	<option value="ME">ME</option>
	<option value="EC">EC</option>
	<option value="BT">BT</option>

	</select></td>
</tr>
<% }else if(branch.equals("IT")){%>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS">CS</option>
	<option value="IT" selected>IT</option>
	<option value="CSD">CSD</option>
	<option value="CSE">CSE</option>
	<option value="ME">ME</option>
	<option value="EC">EC</option>
	<option value="BT">BT</option>

	</select></td>
</tr>
<% }else if(branch.equals("CSD")){%>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS" >CS</option>
	<option value="IT">IT</option>
	<option value="CSD" selected >CSD</option>
	<option value="CSE">CSE</option>
	<option value="ME">ME</option>
	<option value="EC">EC</option>
	<option value="BT">BT</option>

	</select></td>
</tr>
<% }else if(branch.equals("CSE")){%>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS" >CS</option>
	<option value="IT">IT</option>
	<option value="CSD" >CSD</option>
	<option value="CSE" selected>CSE</option>
	<option value="ME">ME</option>
	<option value="EC">EC</option>
	<option value="BT">BT</option>

	</select></td>
</tr>
<% }else if(branch.equals("ME")){%>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS" selected>CS</option>
	<option value="IT">IT</option>
	<option value="CSD">CSD</option>
	<option value="CSE">CSE</option>
	<option value="ME" selected >ME</option>
	<option value="EC">EC</option>
	<option value="BT">BT</option>

	</select></td>
</tr>
<% }else if(branch.equals("EC")){%>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS" selected>CS</option>
	<option value="IT">IT</option>
	<option value="CSD">CSD</option>
	<option value="CSE">CSE</option>
	<option value="ME"  >ME</option>
	<option value="EC" selected>EC</option>
	<option value="BT">BT</option>

	</select></td>
</tr>
<% }else if(branch.equals("BT")){%>
<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS" selected>CS</option>
	<option value="IT">IT</option>
	<option value="CSD">CSD</option>
	<option value="CSE">CSE</option>
	<option value="ME">ME</option>
	<option value="EC">EC</option>
	<option value="BT" selected>BT</option>

	</select></td>
</tr>
<%}%>

<tr><td><b>Year</b></td><td>
              <select name="n3" value="<%=year%>">
			  <option>Select</option>
			  <%for(int i=1;i<=4;i++){
						  				 int year1=Integer.parseInt(year);
				  if(year1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
						  			  <option value="<%=i%>"><%=i%>
<% } }  %>
			  </select>
</td></tr>

   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
<tr><td><b>10th Percentage</b></td><td><input type="text" name="n4" value="<%=p10%>" /></td></tr>
<tr><td><b>12th Percentage</b></td><td><input type="text" name="n5" value="<%=p12%>"  required="required" /></td></tr>
<tr><td><b>BTech</b></td><td><input type="text" name="n6" value="<%=pbtech%>" required="required" /></td></tr>
<tr><td><h3>No. of Back logs</h3></td></tr>
<tr><td><b>1st semester</b></td><td><b>2nd semester</b></td><td><b>3rd semester</b></td><td><b>4th semester</b></td></tr>
<tr><td><input type="text" name="n7" value="<%=b1%>"  required="required" /></td><td><input type="text" name="n8" value="<%=b2%>" required="required" /></td><td><input type="text" name="n9" value="<%=b3%>" required="required" /></td><td><input type="text" name="n10" value="<%=b4%>" required="required" /></td></tr>

<tr><td><b>5th semester</b></td><td><b>6th semester</b></td><td><b>7th semester</b></td><td><b>8th semester</b></td></tr>
<tr><td><input type="text" name="n11" value="<%=b5%>"   /></td><td><input type="text" name="n12" value="<%=b6%>" /></td><td><input type="text" name="n13" value="<%=b7%>"  /></td><td><input type="text" name="n14" value="<%=b8%>" /></td></tr>





<tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><input type=Submit value=UPDATE onClick= "return check();"></td></tr></form></table>
</body>
</html>
</center>
<%}%>