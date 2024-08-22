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
<div id='cssmenu'>
<ul>
   <li class='active has-sub'><a href='#'><span>Home</span></a></li>
   <li class='has-sub'><a href='#'><span>CDC</span></a>
      <ul>
         <li class='last'><a href='#'><span>Registration</span></a>
         </li>
                  <li class='last'><a href='#'><span>Team</span></a></li>
         <li class='last'><a href='#'><span>Function</span></a></li>
</ul>
         <li class='has-sub'><a href='#'><span>Student</span></a>
            <ul>
               <li class='last'><a href='#'><span>Registration</span></a></li>
            </ul>
         </li>
         <li class='has-sub'><a href='#'><span>Company</span></a>
            <ul>
               <li class='last'><a href='#'><span>Registration</span></a></li>
            </ul>
         </li>
         <li class="last"><a href="alumini.html"><span>Alumini</span></a></li>
   
   <li class='last'><a href='pla_stats.html'><span>Placement Statistics</span></a></li>
    <li class='last'><a href='#'><span>Contact US</span></a></li>

   <li class='last'><a href='feedback.html'><span>Feedback</span></a></li>
   

      </ul>
</div>

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
		 String fname="",lname="";
		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from emp where eid='"+value1+"' ");
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
<h3 style="color:#663300;" align="right"><u>Welcome <%=fname%>&nbsp;<%=lname%> </u></h3>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />
<form action="notice_up.jsp" method="post" enctype="multipart/form-data">

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<caption>Upload Notice</caption>
<tr><td><b>Notice Type</b></td><td>
<select name="n1">
<option value=C>Company Visit</option>
<option value=R>Result</option>
<option value=U>Urgent</option>
<option value=E>Event</option>
</select></td></tr>
<tr><td><b>Concerened to</b></td><td>
<select name="n2">
<option value=C>Company</option>
<option value=S>Students</option>
<option value=CDC>CDC</option>
</select></td></tr>
 <tr><td><b>Subject</b></td><td><textarea rows="2" cols="50" name=n3 ></textarea></td></tr>
<tr><td><b>Select Document</b></td><td><input type="file" name="fname"/></td><tr>

<input type="submit" value=Upload >

</table></center></form>
<%}%>
</body>
</html>