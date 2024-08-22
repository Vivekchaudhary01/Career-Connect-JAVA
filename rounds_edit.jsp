<%@ page import="java.sql.*" %>


<%@ page session="false" %>
   <link rel="stylesheet" href="menu3/cssmenu/styles1.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="menu3/cssmenu/script1.js"></script>

<%@ include file="fac.jsp" %>
<br><br>
<%
			        HttpSession session = request.getSession(false);
         String cid = session.getAttribute("cid").toString();

								   
								   %>

<br><br>
<div id='cssmenu1'>
<ul>
   <li class='active'><a href='place_basic_edit.jsp?cid=<%=cid%>'>Placement Day Basic Details</a></li>
   <li><a href='criteria_edit.jsp'>Criteria Details</a></li>
   <li><a href='rounds_edit.jsp'>Rounds Detail</a></li>
</ul>
</div>

<br><br>

<%

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {


		 String det1="",dur1="",det2="",dur2="",det3="",dur3="",det4="",dur4="",det5="",dur5="",tot_r="";

		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from rounds where cid='"+cid+"' ");
	    		    while ( rs.next() ) 
				{
                 tot_r = rs.getString("tot_r");
				det1 = rs.getString("det1");
								dur1 = rs.getString("dur1");
				det2 = rs.getString("det2");

				dur2 = rs.getString("dur2");
                 det3 = rs.getString("det3");
				dur3 = rs.getString("dur3");
                 det4 = rs.getString("det4");
				dur4 = rs.getString("dur4");
				det5 = rs.getString("det5");
                 dur5 = rs.getString("dur5");

				}
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }


%>
<center>
<h2>Round Details</h2>
<table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=rounds_editdb.jsp name=About>

	<tr><td><br><b>Company ID</b></td><td><%=cid%></td></tr>
 <tr><td><b>Details</b></td><td><textarea rows="4" cols="50" name=n1 ><%=det1%></textarea></td></tr>
  <tr><td><b>Duration</b></td><td><input type="text" name=n2 value=<%=dur1%> /></td></tr>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 2</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n3"><%=det2%></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n4" value=<%=dur2%> /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 3</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n5"><%=det3%></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n6" value=<%=dur3%> /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 4</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n7"><%=det4%></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n8" value=<%=dur4%> /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 5</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n9"><%=det5%></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n10" value=<%=dur5%> /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>





 <tr><td><hr /></td><td><hr /></td></tr>	 

<tr><td><input type=Submit value=UPDATE ></td></tr></form></table>
</center>
<%}%>





