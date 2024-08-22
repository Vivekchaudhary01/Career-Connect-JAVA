<%@ page import="java.sql.*" %>
<%@page session="false"%>
<%@ include file="head.jsp" %>
<%@ include file="stu_menu.jsp" %>

<body>
<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
         String value1 = session.getAttribute("Student ID").toString();

String fname="",lname="",roll_no="",obj="",pl="",os="",eca="",tai="",pro="",aoi="",hob="",sth="",tum="";
		try
		{
			String url = "jdbc:mysql://localhost:3306/training";
			Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
rs=stmt.executeQuery("SELECT * FROM cv WHERE sid='"+value1+"'");
while(rs.next())
			{
	fname=rs.getString("fname");
	lname=rs.getString("lname");
	roll_no=rs.getString("roll_no");
	obj=rs.getString("obj");
	pl=rs.getString("pl");
	os=rs.getString("os");
	eca=rs.getString("eca");
	tai=rs.getString("tai");
	pro=rs.getString("pro");
	aoi=rs.getString("aoi");
	hob=rs.getString("hob");
	sth=rs.getString("sth");
	tum=rs.getString("tum");
			}
conn.close();
	}catch(Exception e){
		System.out.println("Got an Exception");
		out.println(e);
	}
%>
<script type="text/javascript"></script>
<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form style="background-color:#ffffff;font-size:17px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;color:#666666;max-width:100%;min-width:150px" action="cv_ud.jsp">
	<div class="title"><h2>CV MAKER</h2></div>
	<div class="element-name"><tr><td><b><label class="title">NAME<span class="required">*</span></label></b></td><td><b><span class="nameFirst"><input  type="text" size="15" name="fname" value="<%=fname%>" required="required"><label class="subtitle">First</label></span><span class="nameLast"><input  type="text" size="15" name="lname" value="<%=lname%>" required="required"/><label class="subtitle">Last</label></span></div></b></td></tr>
	<tr><td><b>ROLL NO.</b></td><td><input type=hidden  name="roll_no" value=<%=roll_no%>
	><%=roll_no%></td></tr>
	<tr><td><b><label class="title">CAREER OBJECTIVE<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="obj" cols="100" rows="5"  required="required"><%=obj%></textarea></b></td></tr></div>
	<tr><td><b><label class="title">PROGRAMMING LANGUAGES<span class="required">* </span></label></b></td><td><b><textarea name="pl" cols="100" rows="5"  required="required"><%=pl%></textarea></b></td></tr></div>
	<div class="large"><tr><td><b><label class="title">OTHER SKILLS<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="os" cols="100" rows="5"  required="required"><%=os%></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">EXTRA CURRICULAR ACTIVITY</label></b></td><td><b><textarea class="medium" name="eca" cols="100" rows="5"  ><%=eca%></textarea></b></td></div>
	<div class="element-textarea"><tr><td><b><label class="title">TRAINING AND INTERNSHIPS<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="tai" cols="100" rows="5"  required="required"><%=tai%></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">PROJECTS<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="pro" cols="100" rows="5"  required="required"><%=pro%></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">AREA OF INTREST</label></b></td><td><b><textarea class="medium" name="aoi" cols="100" rows="5"  ><%=aoi%></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">HOBBIES<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="hob" cols="100" rows="5" required="required"><%=hob%></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">STRENGTH<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="sth" cols="100" rows="5" required="required"><%=sth%></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">TELL US MORE<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="tum" cols="100" rows="5"  required="required"><%=tum%></textarea></b></td></tr></div>
	
<div class="submit"><tr><td><b><input type="submit" value="Submit"/></b></td></tr></div>
</form>
<%}%>
</body>

</html>


