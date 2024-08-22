
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
public class view_car extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws IOException,ServletException
	{
				response.setContentType("text/html");
		PrintWriter out=response.getWriter();

				        try {

            String url = "jdbc:mysql://localhost:3306/coachng";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
			out.println("Select the concerned model name for information");
rs=stmt.executeQuery("SELECT name FROM car_reg");
out.println("<form action=http://localhost:8088/examples/change>");
out.println("<select name=n>");
           while( rs.next() ) {
              String s=rs.getString("name"); 
           out.println("<option value="+s+">"+s+" </option>");
			}
out.println("</select>");
out.println("<input type=submit value=GO />");
out.println("</form>");
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
        out.println("</body>");
        out.println("</html>");
	}
};
