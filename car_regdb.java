
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class car_regdb extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws IOException,ServletException
	{
				response.setContentType("text/html");
		PrintWriter out=response.getWriter();
String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");
String s4=request.getParameter("n4");
String s5=request.getParameter("n5");
String s6=request.getParameter("n6");
String s7=request.getParameter("type");
String s8=request.getParameter("n7");
String s9=request.getParameter("n8");
String s10=request.getParameter("n9");
String s11=request.getParameter("n10");
String s12=request.getParameter("n11");
String s13=request.getParameter("n12");
String s14=request.getParameter("s");
String s15=request.getParameter("d");
String s16=request.getParameter("w");
String s17=request.getParameter("brake1");
String s18=request.getParameter("brake2");
String s19=request.getParameter("brake3");
String s20=request.getParameter("cam");
String s21=request.getParameter("mirror");


				        try {

            String url = "jdbc:mysql://localhost:3306/coachng";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
stmt.executeUpdate("INSERT into car_reg values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"','"+s11+"','"+s12+"','"+s13+"','"+s14+"','"+s15+"','"+s16+"','"+s17+"','"+s18+"','"+s19+"','"+s20+"','"+s21+"')");
           /* if( rs.next() ) {
               
           out.println(" Entry Successful");
			}
			else
				           out.println(" Entry unSuccessful");*/

            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }

					RequestDispatcher dispatcher = request.getRequestDispatcher("/inventory.jsp");

    dispatcher.forward(request, response);
	}
};
