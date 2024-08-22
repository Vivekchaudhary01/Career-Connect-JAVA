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

			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
		   String cid = session.getAttribute("cid").toString();

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("UPDATE rounds SET det1='"+s1+"',dur1='"+s2+"',det2='"+s3+"',dur2='"+s4+"',det3='"+s5+"',dur3='"+s6+"',det4='"+s7+"',dur4='"+s8+"',det5='"+s9+"',dur5='"+s10+"' where cid='"+cid+"' ");
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
		out.println("Update complete");
  RequestDispatcher dispatcher = request.getRequestDispatcher("/rounds_edit.jsp");

    dispatcher.forward(request, response);
	   }
%>
