
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
<center><h1 style="color:#663300;"><u>Welcome to the Placement Cell of IMS Engineering College</u></h1></center>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />

<center><table cellpadding="2px" class=block3 style="border-style:solid; font-size:20px;">
<form action=com_db.jsp >
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
<caption><h2>Company Registration</h2></caption>
	<tr><td><br><b>Name</b></td><td><br><input type=text name=n1 spellcheck="false" placeholder="Company Name" required="required"></td>
	<tr><td><b><br>Username</b></td><td><br><input type=text name=n22 spellcheck="false" placeholder="User Name" required="required"></td></tr>
	<tr><td><b><br>Password</b></td><td><br><input type=password name=n2 spellcheck="false" placeholder="min 6 characters" required="required"></td>
	<td><b><br>Confirm Password</b></td><td><br><input type=password name=cnf spellcheck="false" required="required" ></td> </tr>
<tr><td><b>Year of Establishment</b></td><td>
              <select name=n3 required="required">
			  <%for(int i=1;i<=31;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>DD &nbsp&nbsp
			  <select name=n4 required="required">
			  <%for(int i=1;i<=12;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>MM &nbsp&nbsp
              <select name=n5 required="required">
			  <option>Select</option>
			  <%for(int i=1960;i<=2010;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>YY
</td></tr>
<tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
 <tr><th>Branch Address</th><td><td><b>Contact Details</b></td><td><br></tr>
<tr><td><b>Floor No.</b></td><td><input type="text" name=n6 spellcheck="false" /></td><td><b>Employee Name</b></td><td><input type=text name=n11 spellcheck="false" placeholder="Employ Name" required="required"></td></tr>
<tr><td><b>Building Name</b></td><td><input type="text" name=n7 spellcheck="false" required="required" /></td></td><td><b>Contact No.</b></td><td><input type=text name=n12 spellcheck="false" required="required"></td></tr>
<tr><td><b>City</b></td><td><input type="text" name=n8 spellcheck="false" required="required"  /></td></td><td><b>Email ID</b></td><td><input type=text name=n13 spellcheck="false" placeholder="Example@abc.com" required="required"/></td></tr>
<tr><td><b>State</b></td><td><input type="text" name=n9 spellcheck="false" required="required" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name=n10 spellcheck="false" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>

    <tr><th>Head Off. Address</th><td><td><b>Contact Details</b></td><td><br></tr>
<tr><td><b>Floor No.</b></td><td><input type="text" name=n14 spellcheck="false" /></td><td><b>Employee Name</b></td><td><input type=text name=n19 spellcheck="false" placeholder="Employ Head Name" required="required"></td></tr>
<tr><td><b>Building Name</b></td><td><input type="text" name=n15 spellcheck="false" required="required" /></td></td><td><b>Contact No.</b></td><td><input type=text name=n20 spellcheck="false" required="required"></td></tr>
<tr><td><b>City</b></td><td><input type="text" name=n16 spellcheck="false" required="required"  /></td></td><td><b>Email ID</b></td><td><input type=text name=n21 spellcheck="false" placeholder="Example@abc.com" required="required"/></td></tr>
<tr><td><b>State</b></td><td><input type="text" name=n17 spellcheck="false" required="required" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name=n18 spellcheck="false" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><input type=Submit value=REGISTER onClick= "return check();"></td></tr></form></table>
</body>
</html>
