<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
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
   <li class='active has-sub'><a href=index2.jsp><span>Home</span></a></li>
   <li class='has-sub'><a href='#'><span>CDC</span></a>
      <ul>
         <li class='last'><a href=emp_reg.jsp><span>Registration</span></a>
          
         </li>
                  <li class='last'><a href='#'><span>Team</span></a></li>
         <li class='last'><a href='#'><span>Function</span></a></li>
</ul>
         <li class='has-sub'><a href='#'><span>Student</span></a>
            <ul>
               <li class='last'><a href=stu_reg.jsp><span>Registration</span></a></li>
            </ul>
         </li>
         <li class='has-sub'><a href='#'><span>Company</span></a>
            <ul>
               <li class='last'><a href=com_reg.jsp><span>Registration</span></a></li>
            </ul>
         </li>
         <li class="last"><a href="alumini.html"><span>Alumini</span></a></li>
   
   <li class='last'><a href='pla_stats.html'><span>Placement Statistics</span></a></li>
    <li class='last'><a href='#'><span>Contact US</span></a></li>

   <li class='last'><a href='feedback.html'><span>Feedback</span></a></li>
   

      </ul>
</div>
<div>
<marquee behaviour=scroll direction=left scrollamount=12><img src="images/1417159070ims1.jpg" height="300px" width="700px"  /><img src="images/_MG_7470.JPG" height="300px" width="700px"  /><img src="images/DSC_7501.JPG" height="300px" width="700px" /><img src="images/ims_p2.jpg" height="300px" width="700px"  /><img src="images/dsc_5444.jpg" height="300px" width="700px" /></marquee>
</div>
<marquee bgcolor="#990000" behavior="scroll" direction="left" scrollamount="10">
<b><ul style="float:left; color:#CCCCCC; font-size:20px">
<li style="display:inline;"># Notice of registration for Infogain &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Selection List for Amazon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Notice regarding commencement of classes for Placement Training</li>
</ul></b></marquee>
<center><h1 style="color:#663300;"><u>Welcome to the Placement Cell of IMS Engineering College</u></h1></center>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />

<%
String s1=request.getParameter("name");
String s2=request.getParameter("email");
String s3=request.getParameter("rating");
String s4=request.getParameter("comment");


try {

   String url = "jdbc:mysql://localhost:3306/training";
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn = DriverManager.getConnection(url,"root","");
   Statement stmt = conn.createStatement();
   ResultSet rs;
   stmt.executeUpdate("INSERT into feed_db values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
   // rs=stmt.executeQuery("SELECT * FROM employe");
   conn.close();
} catch (Exception e) {
   System.out.println("Got an exception! ");
   out.println(e);
}
out.println("Thank You! For Your Feedback");
RequestDispatcher dispatcher = request.getRequestDispatcher("/index2.jsp");
dispatcher.forward(request, response);
%>