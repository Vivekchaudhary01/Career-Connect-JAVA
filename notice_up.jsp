<%@ page import="java.sql.*,com.oreilly.servlet.MultipartRequest" %>
<%@ page session="false" %>

<%

			        HttpSession session = request.getSession(false);

if(session==null)
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}
else
{
MultipartRequest m=new MultipartRequest(request,"C:\\Apache Software Foundation\\Tomcat 6.0\\webapps\\training\\uploads");

String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");

				        try {

            String url = "jdbc:mysql://localhost:3306/training";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("INSERT into notice(type,concern,sub) values('"+s1+"','"+s2+"','"+s3+"')");

            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
		out.println("Registration complete");
 /* RequestDispatcher dispatcher = request.getRequestDispatcher("/stu_ac.jsp");

    dispatcher.forward(request, response);*/
}
%>
