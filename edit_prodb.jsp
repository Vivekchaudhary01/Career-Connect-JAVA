<%@ page import="java.sql.*" %>
<%@ page session="false" %>
<%@ include file="fac.jsp" %>

<%
//String eid=request.getParameter("eid");

String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");
String s4=request.getParameter("n4");
String s5=request.getParameter("n5");
String s6=request.getParameter("n6");
String s7=request.getParameter("n7");
String s8=request.getParameter("n8");
String s9=request.getParameter("n9");
String s10=request.getParameter("n10");
String s11=request.getParameter("n11");
String s12=request.getParameter("n12");
String s13=request.getParameter("n13");
String s14=request.getParameter("n14");
String s15=request.getParameter("n15");
String s16=request.getParameter("n16");
String s17=request.getParameter("n17");
String s18=request.getParameter("n18");
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
		   String eid = session.getAttribute("Emp ID").toString();

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("UPDATE emp SET fname='"+s1+"',lname='"+s2+"',usn='"+s3+"',pwd='"+s4+"',date='"+s5+"',month='"+s6+"',year='"+s7+"',gender='"+s8+"',hno='"+s9+"',bn='"+s10+"',city='"+s11+"',state='"+s12+"',pin='"+s13+"',cno='"+s14+"',email='"+s15+"',qual='"+s16+"',exp='"+s17+"',des='"+s18+"' where eid='"+eid+"' ");

            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
 /* RequestDispatcher dispatcher = request.getRequestDispatcher("/criteria.jsp");

    dispatcher.forward(request, response);*/
	   }
%>
<h2 align=center>Update complete</h2>