 import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Mobile extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		String fr=request.getParameter("r2");
		String tv=request.getParameter("t");
		String mo=request.getParameter("m");

        out.println("<html>");
        out.println("<head>");
        out.println("<title>Hello World!</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>HELLO!!!!!</h1>");
        out.println("<h2>you have selected </h2>"+tv+" TV");
        out.println("<h2>you have selected </h2>"+fr+" Fridge");
        out.println("<h2>you have selected </h2>"+mo+" Mobile");
        out.println("</body>");
        out.println("</html>");
    }
}