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
          <!--  <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>-->
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
<center><h1 style="color:#663300;"><u>Faculty Registration Form</u></h1></center>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=emp_db.jsp name=About>
<script language="javascript">

            function check()
            {
                var p1=document.About.n4.value;
                var p2=document.About.cnf.value;

                
				  if(p1.length<6)
				{
				    alert("Password should be minimum 6 characters");
				    document.About.n4.focus();
                return false;
				}
				               else if(p1!=cnf)
                {
                    alert("PAssword do not match");
                    document.About.cnf.focus();
                    return false;
                }

				    }
        </script>

	<tr><td><br><b>First Name</b></td><td><br><input type=text name=n1 spellcheck="false" placeholder="First Name" required="required"></td><td>
	Last Name</td><td><br><input type=text name=n2 spellcheck="false" placeholder="Last Name" > </td> </tr>
	<tr><td><b><br>Username</b></td><td><br><input type=text name=n3 spellcheck="false" placeholder="User Name" required="required"></td></tr>
	<tr><td><b><br>Password</b></td><td><br><input type=password name=n4 spellcheck="false" placeholder="min 6 characters" required="required"></td>
	<td><b><br>Confirm Password</b></td><td><br><input type=password name=cnf spellcheck="false" required="required" ></td> </tr>
<tr><td><b>DOB</b></td><td>
              <select name="n5" required="required">
			  <%for(int i=1;i<=31;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>DD &nbsp&nbsp
			  <select name="n6" required="required">
			  <%for(int i=1;i<=12;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>MM &nbsp&nbsp
              <select name="n7" required="required">
			  <option>Select</option>
			  <%for(int i=1960;i<=2010;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>YY
</td></tr>
	<tr><td><b>Gender</td><td><b><br><input type=radio name=n8 value="female">FEMALE</td><td><b><br><input type=radio name=n8 value="male">MALE</td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
 <tr><th>Address</th></tr>
<tr><td><b>House number</b></td><td><input type="text" name="n9" spellcheck="false"   /></td></tr>
<tr><td><b>Street/block Name</b></td><td><input type="text" name="n10" spellcheck="false" required="required" /></td></tr>
<tr><td><b>City</b></td><td><input type="text" name="n11" spellcheck="false" required="required"  /></td></tr>
<tr><td><b>State</b></td><td><input type="text" name="n12" spellcheck="false" required="required" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name="n13" spellcheck="false" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
 <tr><th>Contact</th></tr>
<tr><td><b>Contact Number</b></td><td><input type="text" name="n14" spellcheck="false" required="required" /></td></tr>
<tr><td><b>Email ID</b></td><td><input type="text" name="n15" spellcheck="false" placeholder="example@abc.com" required="required" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><b>Qualification(highest)</b></td><td><input type="text" name="n16" spellcheck="false" required="required"  /></td></tr>
<tr><td><b>Experience</b></td><td><input type="text" name="n17" spellcheck="false" placeholder="yrs" required="required" /></td></tr>

	<tr><td><br><b>CDC Designation<b></td><td><br><select name=n18 required="required"><option value="">Select</option>
	<option value=""></option>
	<option value="Head">Head</option>
	<option value="Manager">Manager</option>
	<option value="Assitant Manager">Assitant Manager</option>
	<option value="Faculty">Faculty</option>
	</select></td>
</tr>
<tr><td><input type=Submit value=REGISTER onClick= "return check();"></td></tr></form></table>
</body>
</html>