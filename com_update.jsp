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
<div style="float:right; width:20%;"><img src="images/silver.png" height="80px" align="right"></div>
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
<br><br><br>
<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {

         String cid = session.getAttribute("Company ID").toString();
	 

	String cname="",pwd="",date="",month="",year="",fno="",bn="",city="",state="",pin="",en="",cno="", email="",hfno="",hbn="",hcity="",hstate="",hpin="",hen="",hcno="",hemail="",usn="";
	try
	{
		 String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
			rs=stmt.executeQuery("SELECT * FROM company WHERE cid='"+cid+"'");


while(rs.next())
		{
	cname=rs.getString("cname");
	usn=rs.getString("usn");
	pwd=rs.getString("pwd");
	date=rs.getString("date");
	month=rs.getString("month");
	year=rs.getString("year");
	fno=rs.getString("fno");
	bn=rs.getString("bn");
	city=rs.getString("city");
	state=rs.getString("state");
	pin=rs.getString("pin");
	en=rs.getString("en");
	cno=rs.getString("cno");
	email=rs.getString("email");
	hfno=rs.getString("hfno");
	hbn=rs.getString("hbn");
	hcity=rs.getString("hcity");
	hstate=rs.getString("hstate");
	hpin=rs.getString("hpin");
	hen=rs.getString("hen");
	hcno=rs.getString("hcno");
	hemail=rs.getString("hemail");
		}
		conn.close();

 } catch (Exception e) {
           // System.out.println("Got an exception! ");
            //out.println(e);
        }


%>
<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=com_up.jsp>
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
<caption stylr="color:brown;"><h2><u>Update your Details</u></h2><caption>
	<tr><td><br><b>Name</b></td><td><br><input type=text name=n1 value="<%=cname%>"spellcheck="false" placeholder="Company Name" required="required"></td>
	<tr><td><br><b>User Name</b></td><td><br><input type=text name=n22 value="<%=cname%>"spellcheck="false" placeholder="Company Name" required="required"></td>

	<tr><td><b><br>Password</b></td><td><br><input type=password name=n2 value="<%=pwd%>"spellcheck="false" placeholder="min 6 characters" required="required"></td>
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
			  <%for(int i=1960;i<=1994;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>YY
</td></tr>
<tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
	
 <tr><th>Branch Address</th><td><td><b>Contact Details</b></td><td><br></tr>
<tr><td><b>Floor No.</b></td><td><input type="text" name=n6 value="<%=fno%>"spellcheck="false" /></td><td><b>Employ Name</b></td><td><input type=text name=n11 value="<%=en%>"spellcheck="false" placeholder="Employ Name" required="required"></td></tr>
<tr><td><b>Building Name</b></td><td><input type="text" name=n7 value="<%=bn%>"spellcheck="false" required="required" /></td></td><td><b>Contact No.</b></td><td><input type=text name=n12 value="<%=cno%>"spellcheck="false" required="required"></td></tr>
<tr><td><b>City</b></td><td><input type="text" name=n8 value="<%=city%>"spellcheck="false" required="required"  /></td></td><td><b>Email ID</b></td><td><input type=text name=n13 value="<%=email%>"spellcheck="false" placeholder="Example@abc.com" required="required"/></td></tr>
<tr><td><b>State</b></td><td><input type="text" name=n9 value="<%=state%>"spellcheck="false" required="required" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name=n10 value="<%=pin%>"spellcheck="false" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>

    <tr><th>Head Off. Address</th><td><td><b>Contact Details</b></td><td><br></tr>
<tr><td><b>Floor No.</b></td><td><input type="text" name=n14 value="<%=hfno%>"spellcheck="false" /></td><td><b>Employ Name</b></td><td><input type=text name=n19 value="<%=hen%>"spellcheck="false" placeholder="Employ Head Name" required="required"></td></tr>
<tr><td><b>Building Name</b></td><td><input type="text" name=n15 value="<%=hbn%>"spellcheck="false" required="required"></td></td><td><b>Contact No.</b></td><td><input type=text name=n20 value="<%=hcno%>"spellcheck="false" required="required"></td></tr>
<tr><td><b>City</b></td><td><input type="text" name=n16 value="<%=hcity%>"spellcheck="false" required="required"></td></td><td><b>Email ID</b></td><td><input type=text name=n21 value="<%=hemail%>"spellcheck="false" placeholder="Example@abc.com" required="required"></td></tr>
<tr><td><b>State</b></td><td><input type="text" name=n17 value="<%=hstate%>"spellcheck="false" required="required" /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name=n18 value="<%=hpin%>"spellcheck="false" /></td></tr>
   <tr><td><hr /></td><td><hr /></td><td><hr /></td><td><hr /></td></tr>
<tr><td><input type=Submit value=Submit onClick= "return check();"></td></tr></form></table>
</body>
</html>
<%}%>
