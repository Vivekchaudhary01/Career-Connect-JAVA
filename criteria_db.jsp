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
String s11=request.getParameter("n11");
String s12=request.getParameter("n12");
String cid=request.getParameter("cid");
String s13=request.getParameter("n13");
				 				            session.setAttribute("rno", s13);

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("INSERT into criteria values('"+cid+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"')");
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
  RequestDispatcher dispatcher = request.getRequestDispatcher("/rounds.jsp?cid="+cid+"");

    dispatcher.forward(request, response);
}
%>
