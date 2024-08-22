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
<td><b style="color:#000066; text-shadow:#000000; font-size:30px; ">IMS Engineering College,Ghaziabad-Delhi NCR</b><br /><b style="color:#990000; text-shadow:inherit; font-size:22px;">NAAC Accredited with A grade</b><br /><b style="color:#000066; text-shadow:#000000; font-size:22px; ">College Code 143</b><br /> <b style="color:#000099; text-shadow:#000000; font-size:18px; ">Approved By UGC, AICTE, New Delhi & Affiliated to A.P.J. Abdul Kalam Technical University, Lucknow</b></td></tr></table></div>
<div style="float:right; width:20%;"><img src="images/follow-us-on-social-768x432.jpg" height="80px" /></div>
</div>
<br /><br />
<div id='cssmenu'>
<ul>
   <li class='active has-sub'><a href='index2.jsp'><span>Home</span></a></li>
      <li class='has-sub'><a href='#'><span>CDC</span></a>
      <ul>
                  <li class='last'><a href='#'><span>Team</span></a></li>
         <li class='last'><a href='#'><span>Function</span></a></li>
</ul>
         <li class='has-sub'><a href='#'><span>My Profile</span></a>
            <ul>
               <li class='last'><a href='stu_view.jsp'><span>View Profile</span></a></li>
               <li class='last'><a href='stuedit_pro.jsp'><span>Edit Profile</span></a></li>

			</ul>
         </li>

         <li class='has-sub'><a href='#'><span>Campus drive details</span></a>
         </li>
   <li class='last'><a href='eligible.jsp'><span>Elligibility Check</span></a></li>
   <li class='has-sub'><a href='eligible.jsp'><span>CV Maker</span></a>
               <ul>
               <li class='last'><a href='cv_view.jsp'><span>View CV</span></a></li>
               <li class='last'><a href='cv_update.jsp'><span>Edit CV</span></a></li>
               <li class='last'><a href='CV.jsp'><span>Design CV</span></a></li>

			</ul>
         </li>

         <li class="last"><a href="alumini.html"><span>Alumini</span></a></li>  
	   <li class='last'><a href='#'><span>Notices</span></a></li>
         <li class='has-sub'><a href='#'><span>Placement Records </span></a>
            <ul>
               <li class='last'><a href='#'><span>Selection List</span></a></li>
			                  <li class='last'><a href='pla_stats.html'><span>Placement Statistics</span></a></li>

            </ul>
         </li>
    <li class='last'><a href='#'><span>Contact US</span></a></li>

   <li class='last'><a href='feedback.html'><span>Feedback</span></a></li>
   
   <li class='last'><a href='http://localhost:8080/training/logout.jsp'><span>Logout</span></a></li>

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
<h3 style="color:#663300;" align="center"><u>Welcome <%=fname%>&nbsp;<%=lname%> </u></h3>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />
<br><br>
<marquee bgcolor="#990000" behavior="scroll" direction="left" scrollamount="10">
<b><ul style="float:left; color:#CCCCCC; font-size:20px; text-decoration:blink;">
<li style="display:inline;"># Notice of registration for Infogain &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Selection List for Amazon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Notice regarding commencement of classes for Placement Training</li>
</ul></b></marquee>

<div>
<div style="width:50%; float:left; margin-top:50px;">
<img src="images/01images.png" width="500" height="400" />
</div>
<div style="width:50%; float:right; margin-top:50px;">
<b style="font-size:20px; text-shadow:#669966; color:#999933;">
Most people that derail as leaders in the corporate world, it's not because they couldn't do the math and calculate return on investment properly. The issues are communication and understanding. All of what typically would've been called the 'soft stuff.' You have to be authentic. You have to be dialed into the soft stuff.<br />
The corporate world has the resources to improve the world. It's where people live and work.</b>
</div>
</div>

<%}%>
</body>
</html>