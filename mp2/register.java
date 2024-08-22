 import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class regservlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		String st1=request.getParameter("n1");
		String st2=request.getParameter("n2");
		String s3=request.getParameter("n3");
		String st4=request.getParameter("n4");
		String st5=request.getParameter("n5");
		String st6=request.getParameter("n6");
		String st7=request.getParameter("n7");
		String st8=request.getParameter("n8");
		String st9=request.getParameter("n9");
		String st10=request.getParameter("n10");
		String st11=request.getParameter("n11");
		String st12=request.getParameter("n12");
		String st13=request.getParameter("n13");
		String st14=request.getParameter("n14");
		String st15=request.getParameter("n15");
		String st16=request.getParameter("n16");
		String st17=request.getParameter("n17");
		String st18=request.getParameter("n18");
		String st19=request.getParameter("n19");
		String st20=request.getParameter("n20");
		String st21=request.getParameter("n21");
		String st22=request.getParameter("n22");
		String st23=request.getParameter("n23");


		        try {

            String url = "jdbc:mysql://localhost:3306/coachng";
System.out.println("111111 ");
            Connection conn = DriverManager.getConnection(url,"root","");
			System.out.println("222222 ");
            Statement stmt = conn.createStatement();
			System.out.println("33333 ");
            ResultSet rs;
rs= stmt.executeUpdate("INSERT into table1 values('"+st1+"','"+st2+"','"+st3+"','"+st4+"','"+st5+"','"+st6+"','"+st7+"','"+st8+"','"+st9+"','"+st10+"','"+st11+"','"+st12+"','"+st13+"','"+st14+"','"+st15+"','"+st16+"','"+st17+"','"+st18+"','"+st19+"','"+st20+"','"+st21+"','"+st22+"','"+st23+"')");
			System.err.println("44444 ");
			boolean b1=false;
if(rs.next())
	out.println("Successful Registration \n");
else
	out.println("Unsuccessful Registration \n");



            
            conn.close();
				}catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println(e);
        }

// out.println(st+" "+st1);
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Hello World!</title>");
        out.println("</head>");
        out.println("<body>");
		out.println("</body>");
        out.println("</html>");
    }
}