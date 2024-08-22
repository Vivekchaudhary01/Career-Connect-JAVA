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
<center><h1 style="color:#663300;"><u>Accademic Details</u></h1></center>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />

<center><table cellpadding="2px" style=" border-style:solid; font-size:15px;">
<form action=stu_acdb.jsp name=About>


<tr><td><b>Course</b></td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=BTech >B.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MTech >M.Tech</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MBA >MBA</td></tr>
<tr><td></td><td><input  type=Radio name=n1 value=MCA >MCA</td></tr>

<tr><td><b>Branch</b></td><td> <select name="n2" required="required">
	<option value="CS">CS</option>
	<option value="IT">IT</option>
	<option value="EC">CSD</option>
	<option value="EN">CSE</option>
	<option value="IT">ME</option>
	<option value="EC">EC</option>
	<option value="EN">BT</option>

	</select></td>
</tr>
<tr><td><b>Year</b></td><td> <select name="n3" required="required">
			  <%for(int i=1;i<=4;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%></td></tr>
<tr><td><b>10th Percentage</b></td><td><input type="text" name="n4" spellcheck="false" placeholder="%" required="required"/></td></tr>
<tr><td><b>12th Percentage</b></td><td><input type="text" name="n5" spellcheck="false" placeholder="%" required="required" /></td></tr>
<tr><td><b>BTech</b></td><td><input type="text" name="n6" spellcheck="false" placeholder="%" required="required" /></td></tr>
<tr><td><h3>No. of Back logs</h3></td></tr>
<tr><td><b>1st semester</b></td><td><b>2nd semester</b></td><td><b>3rd semester</b></td><td><b>4th semester</b></td></tr>
<tr><td><input type="text" name="n7" spellcheck="false"  required="required" /></td><td><input type="text" name="n8" spellcheck="false" required="required" /></td><td><input type="text" name="n9" spellcheck="false" required="required" /></td><td><input type="text" name="n10" spellcheck="false" required="required" /></td></tr>

<tr><td><b>5th semester</b></td><td><b>6th semester</b></td><td><b>7th semester</b></td><td><b>8th semester</b></td></tr>
<tr><td><input type="text" name="n11" spellcheck="false"   /></td><td><input type="text" name="n12" spellcheck="false"   /></td><td><input type="text" name="n13" spellcheck="false"  /></td><td><input type="text" name="n14" spellcheck="false"   /></td></tr>





<tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><input type=Submit value=REGISTER onClick= "return check();"></td></tr></form></table>
</body>
</html>