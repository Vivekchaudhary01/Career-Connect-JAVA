

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class update_car extends HttpServlet
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
String s17=request.getParameter("check1");
String s18=request.getParameter("check2");
String s19=request.getParameter("check3");
String s20=request.getParameter("cam");
String s21=request.getParameter("mirror");

				        try {

            String url = "jdbc:mysql://localhost:3306/coachng";
System.out.println("111111 ");
            Connection conn = DriverManager.getConnection(url,"root","");
			System.out.println("222222 ");
            Statement stmt = conn.createStatement();
			System.out.println("33333 ");
            ResultSet rs;
stmt.executeUpdate("UPDATE car_reg SET name='"+s1+"', number='"+s2+"', colour='"+s3+"', mileage='"+s4+"', rpm='"+s5+"', capacity='"+s6+"',type='"+s7+"', mno='"+s8+"', mname='"+s9+"', length='"+s10+"', width='"+s11+"', height='"+s12+"', weight='"+s13+"', seat='"+s14+"', door='"+s15+"', window='"+s16+"', disk_b='"+s17+"', power_b='"+s18+"', hand_b='"+s19+"', r_cam='"+s20+"', r_mirror='"+s21+"' WHERE name='"+s1+"' ");
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }

		 out.println("<html>");
        out.println("<head>");
        out.println("<title>Hello World!</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Update SUCCESSFUL</h1>");
        out.println("</body>");
        out.println("</html>");
	}
};
