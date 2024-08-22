
import jd.*;
 import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class firstservlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		String st=request.getParameter("n1");
		String st1=request.getParameter("n2");
		String st2=request.getParameter("a");
		String st3=request.getParameter("c");
String s1=getServletConfig().getInitParameter("year");
out.println(s1);
String s2=getServletContext().getInitParameter("email");
out.println(s2);

		        try {
					jd conn=new jd(); //using jdbc function by importing a package
					Statement stmt=conn.getConn();
            ResultSet rs;
 stmt.executeUpdate("INSERT into table1 values('"+st+"','"+st1+"','"+st2+"')");
// stmt.executeUpdate("INSERT into table1 values('"+s1+"','"+s2+"','"+s3+"')");
            rs = stmt.executeQuery("SELECT * FROM table1");
			System.err.println("44444 ");
            while ( rs.next() ) {
                String lastName = rs.getString("col1");
                System.out.println(lastName);
            }
       // conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }
 out.println(st+" "+st1);
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Hello World!</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>HELLO!!!!!</h1>");
        out.println("</body>");
        out.println("</html>");
    }
		Statement getConn() //using jdbc code within a function in d same class
		{
Statement stmt=null;
			try{
            String url = "jdbc:mysql://localhost:3306/coachng";
            Connection conn = DriverManager.getConnection(url,"root","");
             stmt = conn.createStatement();
			}
catch (Exception e) {}
return(stmt);
		}

}