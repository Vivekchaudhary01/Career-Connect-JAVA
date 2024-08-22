<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ include file="fac.jsp" %>
<br><br>
<%@ include file="menu3/cssmenu/menu.jsp" %>
<br><br>
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

<center><h1 style="color:#663300;"><u>Campus Day Details</u></h1></center>

<center><table cellpadding="3px" style=" border-style:solid; font-size:20px;">
<form action="placement_db.jsp">
<tr><td><b>Company ID</b></td><td><input type="text" name="n1" spellcheck="false" placeholder="Company ID" /></td></tr>
<tr><td><b>Campus Day</b></td><td>
              <select name="n2">
			  <%for(int i=1;i<=31;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>DD &nbsp;&nbsp;
			  <select name="n3">
			  <%for(int i=1;i<=12;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>MM &nbsp;&nbsp;
              <select name="n4">
			  <option>Select</option>
			  <%for(int i=1980;i<=2013;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select>YY
</td></tr>
<tr><td><hr /></td><td><hr /></td></tr>
 <tr><td><b>Venue</b></td></tr>
<tr><td><b>Block Name</b></td><td><input type="text" name="n5" spellcheck="false"  /></td></tr>
<tr><td><b>Building Name</b></td><td><input type="text" name="n6" spellcheck="false"  /></td></tr>
<tr><td><b>City</b></td><td><input type="text" name="n7" spellcheck="false"  /></td></tr>
<tr><td><b>State</b></td><td><input type="text" name="n8" spellcheck="false"  /></td></tr>
<tr><td><b>Pin code</b></td><td><input type="text" name="n9" spellcheck="false" /></td></tr>

   <tr><td><hr /></td><td><hr /></td></tr>
   
   <tr><th>Faculties Incharge</th></tr>
   <tr><td><b>Faculty ID</b></td><td><input type="text" name="n10" spellcheck="false" placeholder="Faculty ID" /></td></tr>
<tr><td><b>Faculty Name</b></td><td><input type="text" name="n11" spellcheck="false" placeholder="Faculty Name" /></td></tr>
   <tr><td><hr /></td><td><hr /></td></tr>
   <tr><td><b>Reporting Time</b></td><td><input type="text" name="n12" spellcheck="false" placeholder="AM/PM" /></td></tr>
<tr><td><b>Duration(approx.)</b></td><td><input type="text" name="n13" spellcheck="false" placeholder="hrs" /></td></tr>
   <tr><td><b>Tentative Result Date</b></td><td><input type="text" name="n14" spellcheck="false" placeholder="dd-mm-yy" /></td></tr>
 <tr><td><b>Profile Link</b></td><td><input type="text" name="n15" spellcheck="false" placeholder="URL" /></td></tr>

       <tr><th>       <input type="submit" value="SUBMIT" id="create-account1" class="button"></th></tr>
       </form></table></center>

 


<%}%>


</body>
</html>
