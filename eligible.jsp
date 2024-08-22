<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>IMS Placement Cell</title>
</head>

<body>

<div style="height:80px; width:auto;">
<div style="float:left; width:80%;">
<table>
<tr><td><img src="images/imslogo.jpg" height="100px" width="100px"/></td>
<td><b style="color:#000066; text-shadow:#000000; font-size:30px; ">IMS Engineering College,Ghaziabad-Delhi NCR</b><br /><b style="color:#990000; text-shadow:inherit; font-size:22px;">NAAC Accredited with A grade</b><br /><b style="color:#000066; text-shadow:#000000; font-size:22px; ">College Code 143</b><br /> <b style="color:#000099; text-shadow:#000000; font-size:18px; ">Approved By UGC, AICTE, New Delhi & Affiliated to Dr. A.P.J. Abdul Kalam Technical University, Lucknow</b></td></tr></table></div>
<div style="float:right; width:20%;"><img src="images/follow-us-on-social-768x432.jpg" height="80px" /></div>
</div>
<br /><br />
<%@ include file="stu_menu.jsp" %>
<br><br>
<marquee bgcolor="#990000" behavior="scroll" direction="left" scrollamount="10">
<b><ul style="float:left; color:#CCCCCC; font-size:20px; text-decoration:blink;">
<li style="display:inline;"># Notice of registration for Infogain &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Selection List for Amazon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Notice regarding commencement of classes for Placement Training</li>
</ul></b></marquee>

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
         String value1 = session.getAttribute("Student ID").toString();
		 String fname="",lname="";
		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from student where sid='"+value1+"' ");
	    		    while ( rs.next() ) 
				{
                 fname = rs.getString("fname");
				lname = rs.getString("lname");
				}
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }

%>
<div style="margin-top:50px;">
<center >
<table style="border-style:solid; border-color:brown; font-size:24px;" cellpadding=5px >
<form action=eligible_chk.jsp>
<tr><td><b>Select Company</b></td><td>
<select name=n1>

<%
	String cid="",cname="";
		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select cid,cname from company ");
	    		    while ( rs.next() ) 
				{
                 cname = rs.getString("cname");
                 cid = rs.getString("cid");

				 %>
				 <option value=<%=cid%>><%=cname%></option>
				 <%
				}
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }

%>
</select>
</td></tr>

<tr><td><input type=submit value=SEARCH></td></tr>
</form>
</table>
</center>

</div>
<%}%>
</body>
</html>