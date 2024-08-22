 import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class final_list extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		String fr=request.getParameter("r2");
		String tv=request.getParameter("t");
		String mo=request.getParameter("m");
     /*   Cookie[] cookies = request.getCookies();
        for (int i = 0; i < cookies.length; i++) {
            Cookie c = cookies[i];
            String name = c.getName();
            String value = c.getValue();
            out.println(name + " = " + value);}*/
			        HttpSession session = request.getSession(true);
         String value = session.getAttribute("tv session").toString();
            out.println("tv session" + " = " + value);
			            value = session.getAttribute("mobile session").toString();
            out.println("mobile session" + " = " + value);

        


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