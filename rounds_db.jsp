<%@ page session="false" %>

<%@ page import="java.sql.*" %>

<%

			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
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
String cid=request.getParameter("cid");
	         String rn = session.getAttribute("total rounds").toString();

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("INSERT into rounds(cid,tot_r,det1,dur1,det2,dur2,det3,dur3,det4,dur4,det5,dur5) values('"+cid+"','"+rn+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
		out.println("done");
/*  RequestDispatcher dispatcher = request.getRequestDispatcher("/faculty.jsp");

    dispatcher.forward(request, response);*/
	}
%>
