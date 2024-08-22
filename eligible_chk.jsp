<%@ page import="java.sql.*" %>
<%@ include file="head.jsp" %>
<%@ include file="stu_menu.jsp" %>

<%@ page session="false" %>
<marquee bgcolor="#990000" behavior="scroll" direction="left" scrollamount="10">
<b><ul style="float:left; color:#CCCCCC; font-size:20px; text-decoration:blink;">
<li style="display:inline;"># Notice of registration for Infogain &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Selection List for Amazon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
<li style="display:inline;"># Notice regarding commencement of classes for Placement Training</li>
</ul></b></marquee>

<%
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
	String cid=request.getParameter("n1");
         String sid = session.getAttribute("Student ID").toString();

		 String fname="",lname="";
		 		 String p10="",p12="",pbt="",cl="",vl="",cs="",it="",ec="",en="",me="",ce="",bt="";
						 String course="",b="",year="",ps10="",ps12="",pbtech="",b1="",b2="",b3="",b4="",b5="",b6="",b7="",b8="";
int ips10=0,ips12=0,ipbtech=0,ip10=0,ip12=0,ipbt=0;
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
								                 cs = rs.getString("cs");
				it = rs.getString("it");
                 ec = rs.getString("ec");
				en = rs.getString("en");
				me = rs.getString("me");
                 ce = rs.getString("ce");
				bt = rs.getString("bt");

				}
ip10=Integer.parseInt(p10);
ip12=Integer.parseInt(p12);
ipbt=Integer.parseInt(pbt);

	  
	  rs = stmt.executeQuery("select * from stu_academic where sid='"+sid+"' ");
	    		    while ( rs.next() ) 
				{
				b = rs.getString("branch");
				ps10 = rs.getString("p10");

				ps12 = rs.getString("p12");
                 pbtech = rs.getString("pbtech");
				b1= rs.getString("b1");
                 b2 = rs.getString("b2");
				b3 = rs.getString("b3");
                 b4 = rs.getString("b4");
				b5 = rs.getString("b5");
                 b6 = rs.getString("b6");
				b7 = rs.getString("b7");
				b8 = rs.getString("b8");

				}
ips10=Integer.parseInt(ps10);
ips12=Integer.parseInt(ps12);
ipbtech=Integer.parseInt(pbtech);

                conn.close();

 } catch (Exception e) {
            //System.out.println("Got an exception! ");
            //out.println(e);
        }
		%>
		<div style="margin-left:200px; margin-right:200px;">
<hr color="#990033" />
<div style="border-style:solid; border-width:3px; margin-top:50px;">
<%
if(ips10>=ip10 && ips12>=ip12 && ipbtech>=ipbt && (b.equals(cs) || b.equals(it) || b.equals(ec) || b.equals(en) || b.equals(me) || b.equals(ce) || b.equals(bt)))
	{	
%>
<center><h2><u>Congrats you are elligble for the company.</u></h2></center>
<%} else{%>
<center><h2><u>Sorry..!!You are not elligble for the company.</u></h2></center>
<%}%>
<table style="font-size:25px;">
<tr><th><b>Elligibility Criteria for the company</b></th></tr>
<tr><td><b>10th Aggregate</b></td><td><%=p10%></td></tr>
<tr><td><b>12th Aggregate</b></td><td><%=p12%></td></tr>
<tr><td><b>Btech Aggregate</b></td><td><%=pbt%></td></tr>
<tr><th><b>Branches Involved</b></th></tr>
<%
if(cs.equals("CS")){%>
	<tr><td><b>
	<%=cs%> </td></tr><%}
if(it.equals("IT")){%>
	<tr><td><b>
	<%=it%> </td></tr><%}
	if(ec.equals("CSD")){%>
	<tr><td><b>
	<%=ec%> </td></tr><%}
	if(en.equals("CSE")){%>
	<tr><td><b>
	<%=en%> </td></tr><%}
	if(me.equals("ME")){%>
	<tr><td><b>
	<%=me%> </td></tr><%}
	if(ce.equals("EC")){%>
	<tr><td><b>
	<%=ce%> </td></tr><%}
	if(bt.equals("BT")){%>
	<tr><td><b>
	<%=bt%> </td></tr><%}}%>
	</table>
	</div>
</body>
</html>