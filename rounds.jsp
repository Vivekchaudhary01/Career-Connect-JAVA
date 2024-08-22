<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ include file="fac.jsp" %>
<br><br>
<%@ include file="menu3/cssmenu/menu.jsp" %>
<br><br>

<%
String cid=request.getParameter("cid");

			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
	         String rno = session.getAttribute("rno").toString();
			 String r1=rno;
			 				 				            session.setAttribute("total rounds", r1);

int  r=Integer.parseInt(rno);
int j=0;
String rn[]={"n1","n2","n3","n4","n5","n6","n7","n8","n9","n10"};
%>

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action="rounds_db.jsp">

<center><h1 style="color:#663300;"><u>Rounds Details</u></h1></center>
<%
	for(int i=0;i<2*r;i++)
	{
	j=i+1;
	%>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round <%=j%></th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp             
 <tr><td><b>Details</b></td><td><textarea rows="4" cols="50" name="<%=rn[i]%>" ></textarea></td></tr>
  <tr><td><b>Duration</b></td><td><input type="text" name="<%=rn[++i]%>" spellcheck="false" placeholder="hrs" /></td></tr>
  <%}%>
<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 2</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n4"></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n5" spellcheck="false" placeholder="hrs" /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 2</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n6"></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n7" spellcheck="false" placeholder="hrs" /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 2</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n8"></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n9" spellcheck="false" placeholder="hrs" /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<tr><th>Round 2</th></tr>   
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp             
 <tr><td>Details</td><td><textarea rows="4" cols="50" name="n10"></textarea></td></tr>
  <tr><td>Duration</td><td><input type="text" name="n11" spellcheck="false" placeholder="hrs" /></td></tr>
  <tr><td><hr /></td><td><hr /></td></tr>-->
<input type="hidden" name=cid value="<%=cid%>">
       <tr><th>       <input type="submit" value="SUBMIT" id="create-account1" class="button"></th></tr>
       </form></table></center>
<%}%>
</body>
</html>
