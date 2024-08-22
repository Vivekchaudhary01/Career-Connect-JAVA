<%@ page import="java.sql.*" %>

<%@ page session="false" %>
<%@ include file="fac.jsp" %>
<br><br>
<%@ include file="menu3/cssmenu/menu.jsp" %>
<br><br>
<%
String cid=request.getParameter("cid");%>

<center><table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action="criteria_db.jsp">
<center><h1 style="color:#663300;"><u>Elligibility Criteria</u></h1></center>

<tr><td><b>10th Percentage</b></td><td><input type="text" name="n1" spellcheck="false" placeholder="%" /></td></tr>
<tr><td><b>12th Percentage</b></td><td><input type="text" name="n2" spellcheck="false" placeholder="%" /></td></tr>
<tr><td><b>BTech(aggregate upto 6th sem)</b></td><td><input type="text" name="n3" spellcheck="false" placeholder="%" /></td></tr>
<tr><td><hr /></td><td><hr /></td></tr>
<tr><th>COMPANY REQUIREMENT</th></tr>
<tr><td><b>Vocal Languages known</b></td><td><input type="text" name="n4" spellcheck="false" /></td></tr>
<tr><td><b>Computer Language Preference &nbsp;&nbsp;</b></td><td><input type="text" name="n5" spellcheck="false"  /></td></tr>
<tr><th>Branches Involved</th><tr>
<tr><td></td><td><input type=checkbox name=n6 value=CS  />CS</td><td><input type=checkbox name=n7 value=IT  />CSD</td></tr>
<tr><td></td><td><input type=checkbox name=n8 value=EC  />IT</td><td><input type=checkbox name=n9 value=EN  />CSE</td></tr>
<tr><td></td><td><input type=checkbox name=n10 value=ME  />ME</td><td><input type=checkbox name=n11 value=CE  />EC</td></tr>
<tr><td></td><td><input type=checkbox name=n12 value=BT  />BT</td>
<tr><td><b>Number of Rounds</b></td><td><select name="n13">
			  <%for(int i=1;i<=7;i++){%>
			  <option value="<%=i%>"><%=i%>
			  <%}%>
			  </select> &nbsp&nbsp </td></tr>

<input type=hidden name=cid value="<%=cid%>" />

 <tr><td><hr /></td><td><hr /></td></tr>
       <tr><th>       <input type="submit" value="SUBMIT" id="create-account1" class="button"></th></tr>
       </form></table></center>

</body>
</html>
