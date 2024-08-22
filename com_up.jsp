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
</div>
<br /><br />
<div id='cssmenu'>
<ul>
   <li class='active has-sub'><a href='http://localhost:8080/training/company.jsp'><span>Home</span></a></li>
         <li class='has-sub'><a href='#'><span>Student</span></a>
            <ul>
               <li class='last'><a href='#'><span>View CV</span></a></li>
            </ul>
         </li>
		          <li class='has-sub'><a href='#'><span>My Profile</span></a>
            <ul>
               <li class='last'><a href='#'><span>View Profile</span></a></li>
               <li class='last'><a href='com_update.jsp'><span>Edit Profile</span></a></li>

			</ul>
         </li>
   <li class="last"><a href="alumini.html"><span>Alumini</span></a></li>
   
   <li class='last'><a href='pla_stats.html'><span>Placement Statistics</span></a></li>
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

   try{
      String value1 = session.getAttribute("Company ID").toString();
   }catch (Exception e) {
     // System.out.println("Got an exception! ");
     // out.println(e);
  }
String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");
String s4=request.getParameter("n4");
String s5=request.getParameter("n5");
String s6=request.getParameter("n6");
String s7=request.getParameter("n7");
String s8=request.getParameter("n8");
String s9=request.getParameter("n9");
String s10=request.getParameter("n10");
String s11=request.getParameter("n11");
String s12=request.getParameter("n12");
String s13=request.getParameter("n13");
String s14=request.getParameter("n14");
String s15=request.getParameter("n15");
String s16=request.getParameter("n16");
String s17=request.getParameter("n17");
String s18=request.getParameter("n18");
String s19=request.getParameter("n19");
String s20=request.getParameter("n20");
String s21=request.getParameter("n21");
String s22=request.getParameter("n22");

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
//stmt.executeUpdate("UPDATE company SET cname='"+s1+"',pwd='"+s2+"',date='"+s3+"',month='"+s4+"',year='"+s5+"',fno='"+s6+"',bn='"+s7+"',city='"+s8+"',state='"+s9+"',pin='"+s10+"',en='"+s11+"',cno='"+s12+"',email='"+s13+"',hfno='"+s14+"',hbn='"+s15+"',hcity='"+s16+"',hstate='"+s17+"',hpin='"+s18+"',hen='"+s19+"',hcno='"+s20+"',hemail='"+s21+"',usn='"+s22+"' WHERE cid='"+value1+"' ");
//stmt.executeUpdate("UPDATE login SET usn='"+s3+"',pwd='"+s2+"',status='A',type='C' WHERE usn='"+s1+"'");

            conn.close();
        } catch (Exception e) {
            //System.out.println("Got an exception! ");
            //out.println(e);
        }
%>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />

<h2 align=center>Your profile has been updated Successfully<br></h2>
<%}%>
</body>
</html>
