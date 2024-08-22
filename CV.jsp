<%@ page import="java.sql.*" %>
<%@page session="false"%>
<%@ include file="head.jsp" %>
<%@ include file="stu_menu.jsp" %>

<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
%>
<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />

<script type="text/javascript"></script>
<center><table cellpadding="5px" style=" border-style:solid; font-size:20px;">
<form style="background-color:#ffffff;font-size:17px;font-family:'Open Sans','Helvetica Neue','Helvetica',Arial,Verdana,sans-serif;color:#666666;max-width:100%;min-width:150px" action="cv_db.jsp">
	<div class="title"><h2>CV MAKER</h2></div>
	<div class="element-name"><tr><td><b><label class="title">NAME<span class="required">*</span></label></b></td><td><b><span class="nameFirst"><input  type="text" size="15" name="fname" required="required"><label class="subtitle"></label></span><span class="nameLast"><input  type="text" size="15" name="lname" required="required"/><label class="subtitle"></label></span></div></b></td></tr>
	<tr><td><b>ROLL NO.</b></td><td><input type="text" size="15" name="roll_no" required="required"></td></tr>
	<tr><td><b><label class="title">CAREER OBJECTIVE<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="obj" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<tr><td><b><label class="title">PROGRAMMING LANGUAGES<span class="required">* </span></label></b></td><td><b><textarea name="pl" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<div class="large"><tr><td><b><label class="title">OTHER SKILLS<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="os" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">EXTRA CURRICULAR ACTIVITY</label></b></td><td><b><textarea class="medium" name="eca" cols="100" rows="5" ></textarea></b></td></div>
	<div class="element-textarea"><tr><td><b><label class="title">TRAINING AND INTERNSHIPS<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="tai" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">PROJECTS<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="pro" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">AREA OF INTREST</label></b></td><td><b><textarea class="medium" name="aoi" cols="100" rows="5" ></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">HOBBIES<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="hob" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">STRENGTH<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="sth" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	<div class="element-textarea"><tr><td><b><label class="title">TELL US MORE<span class="required">*</span></label></b></td><td><b><textarea class="medium" name="tum" cols="100" rows="5" required="required"></textarea></b></td></tr></div>
	
<div class="submit"><tr><td><b><input type="submit" value="Submit"/></b></td></tr></div>
</form>
<%}%>
</body>
</html>
