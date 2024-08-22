<%@ page session="false" %>
<%@ page import="java.sql.*" %>

<%
//String eid=request.getParameter("eid");

String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");
String s4=request.getParameter("n4");
String s5=request.getParameter("n5");
String s6=request.getParameter("n6");
			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

       else
	   {
         String cid = session.getAttribute("cid").toString();
         String cname = session.getAttribute("cname").toString();

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("INSERT into round_rep(cid,cname,rname,category,date,month,year,ns) values('"+cid+"','"+cname+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
											RequestDispatcher dispatcher = request.getRequestDispatcher("/round_rep.jsp");

    dispatcher.forward(request, response);
	   }
	   %>