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
         String value = session.getAttribute("rounds").toString();
int r=Integer.parseInt(value);
if(r!=0)
	{
r--;
value=String.valueOf(r);				 				          
session.setAttribute("rounds", value);

%>
<center>
<form action=round_repdb.jsp name=About>
<table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<tr><td>Round Name</td><td>			  <input type="text" name="n1" spellcheck="false" placeholder="Round Name" /></td></tr>
	<tr><td><br><b>Category of Round<b></td><td><br><select name=n2 required="required"><option value="">Select</option>
	<option value="Interview">Interview</option>
	<option value="Coding">Coding</option>
	<option value="Written">Written</option>
	</select></td>
</tr>

<tr><td>Date </td><td>
              <select name="n3">
			  <%for(int i=1;i<=31;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>DD &nbsp&nbsp
			  <select name="n4">
			  <%for(int i=1;i<=12;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>MM &nbsp&nbsp
              <select name="n5">
			  <option>Select</option>
			  <%for(int i=1980;i<=2013;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>YY
</td></tr>

<tr><td>Number of Students Selected</td><td>			  <input type="text" name="n6" spellcheck="false" /></td></tr>
</table>
<br>
<input type=submit value=Proceed />
</form>

<% }
else {
												RequestDispatcher dispatcher = request.getRequestDispatcher("/faculty.jsp");

    dispatcher.forward(request, response);
	   }
}%>
</body>
</html>
