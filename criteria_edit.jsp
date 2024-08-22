<%@ page import="java.sql.*" %>


<%@ page session="false" %>
   <link rel="stylesheet" href="menu3/cssmenu/styles1.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="menu3/cssmenu/script1.js"></script>

<%@ include file="fac.jsp" %>
<%
			        HttpSession session = request.getSession(false);
         String cid = session.getAttribute("cid").toString();

								   
								   %>

<br><br>
<div id='cssmenu1'>
<ul>
   <li class='active'><a href='place_basic_edit.jsp?cid=<%=cid%>'>Placement Day Basic Details</a></li>
   <li><a href='criteria_edit.jsp'>Criteria Details</a></li>
   <li><a href='rounds_edit.jsp'>Rounds Detail</a></li>
</ul>
</div>

<br><br>

<%

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
//String cid=request.getParameter("cid");


		 String p10="",p12="",pbt="",cl="",vl="",cs="",it="",ec="",en="",me="",ce="",bt="",tot_r="";

		 				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
      rs = stmt.executeQuery("select * from criteria where cid='"+cid+"' ");
	    		    while ( rs.next() ) 
				{
                 p10 = rs.getString("p10");
				p12 = rs.getString("p12");
								pbt = rs.getString("pbt");
				vl = rs.getString("vl");

				cl = rs.getString("cl");
                 cs = rs.getString("cs");
				it = rs.getString("it");
                 ec = rs.getString("ec");
				en = rs.getString("en");
				me = rs.getString("me");
                 ce = rs.getString("ce");
				bt = rs.getString("bt");

				}
      rs = stmt.executeQuery("select tot_r from rounds where cid='"+cid+"' ");
	    		    while ( rs.next() ) 
				{
                 tot_r = rs.getString("tot_r");
				}

            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }


%>
<center>
<h2>Criteria Details</h2>
<table cellpadding="2px" style=" border-style:solid; font-size:20px;">
<form action=criteria_editdb.jsp name=About>
	<tr><td><br><b>Company ID</b></td><td><%=cid%></td></tr>
<tr><th>ELLIGIBILITY CRITERIA</th></tr>
<tr><td><b>10th Percentage</b></td><td><input type="text" name="n1" value="<%=p10%>" /></td></tr>
<tr><td><b>12th Percentage</b></td><td><input type="text" name="n2" value="<%=p12%>" /></td></tr>
<tr><td><b>BTech(aggregate upto 6th sem)</b></td><td><input type="text" name="n3" value="<%=pbt%>" /></td></tr>
<tr><td><hr /></td><td><hr /></td></tr>
<tr><th>COMPANY REQUIREMENT</th></tr>
<tr><td><b>Vocal Languages known</b></td><td><input type="text" name="n4" value="<%=vl%>" /></td></tr>
<tr><td><b>Computer Language Preference &nbsp;&nbsp;</b></td><td><input type="text" name="n5" value="<%=cl%>"  /></td></tr>
<tr><th>Branches Involved</th><tr>
<%
		if(cs.equals("CS"))
		   {%>
<tr><td></td><td><input type=checkbox name=n6 value=CS checked />CS</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n6 value=CS  />CS</td>
<%}
		if(it.equals("IT"))
		   {%>
<tr><td></td><td><input type=checkbox name=n7 value=IT checked />IT</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n7 value=IT  />IT</td></tr>
<%}
		if(ec.equals("EC"))
		   {%>
<tr><td></td><td><input type=checkbox name=n8 value=EC checked />EC</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n8 value=EC  />EC</td></tr>
<%}
		if(en.equals("EN"))
		   {%>
<tr><td></td><td><input type=checkbox name=n9 value=EN checked />EN</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n9 value=EN  />EN</td></tr>
<%}
		if(me.equals("ME"))
		   {%>
<tr><td></td><td><input type=checkbox name=n10 value=ME checked />ME</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n10 value=ME  />ME</td></tr>
<%}
		if(ce.equals("CE"))
		   {%>
<tr><td></td><td><input type=checkbox name=n11 value=CE checked />CE</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n11 value=CE  />CE</td></tr>
<%}
		if(bt.equals("BT"))
		   {%>
<tr><td></td><td><input type=checkbox name=n12 value=BT checked />BT</td>
<%}else{%>
<tr><td></td><td><input type=checkbox name=n12 value=BT  />BT</td></tr>
<%}%>





 <tr><td><hr /></td><td><hr /></td></tr>
 <tr><td><b>Number of Rounds</b></td><td>              <select name="n13" value="<%=tot_r%>">
			  <option>Select</option>
			  <%for(int i=1;i<=5;i++){
						  				 int tot_r1=Integer.parseInt(tot_r);
				  if(tot_r1==i){
					  %>
			  <option value="<%=i%>" selected><%=i%>
			  <%}else{%>
						  			  <option value="<%=i%>"><%=i%>
<% } }  %>
			  </select>
</td></tr>

 <tr><td><hr /></td><td><hr /></td></tr>

<tr><td><input type=Submit value=UPDATE ></td></tr></form></table>
</center>
<%}%>