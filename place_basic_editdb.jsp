<%@ page import="java.sql.*" %>
<%@ page session="false" %>

<%

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
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
		  String cid = session.getAttribute("cid").toString();
		  //String cid=request.getParameter("cid");

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("UPDATE place_day_basic_details SET date='"+s1+"',month='"+s2+"',year='"+s3+"',blockn='"+s4+"',buildn='"+s5+"',city='"+s6+"',state='"+s7+"',pin='"+s8+"',fid='"+s9+"',fname='"+s10+"',rtime='"+s11+"',duration='"+s12+"',tentd='"+s13+"',link='"+s14+"' where cid='"+cid+"' ");

            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
		out.println("Update complete");
  RequestDispatcher dispatcher = request.getRequestDispatcher("/criteria_edit.jsp");

    dispatcher.forward(request, response);
	   }
%>
