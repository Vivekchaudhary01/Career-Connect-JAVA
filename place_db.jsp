<%@ page import="java.sql.*" %>
<%@ page session="false" %>
<%
String s1=request.getParameter("user");
String s2=request.getParameter("pwd");
boolean bi=false;
out.println("  s1="+s1);
String usn="",pwd="",type="",status="",eid="",cid="",sid="";
				        try {

            String url = "jdbc:mysql://localhost:3306/training";
			Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
			String query = "select * from place_day_basic_details" ;
			
			out.println("  query="+query);
      rs = stmt.executeQuery(query);
	  out.println("<table border=1>");
	    		    while ( rs.next() ) 
				{out.println("<tr>");
						bi=true;
                 usn = rs.getString("cid");
				pwd = rs.getString("buildn");
				status = rs.getString("fname");
				//type = rs.getString("type");
				out.println("<td>"+usn+"</td>");
			    out.println("<td>"+pwd+"</td>");
				out.println("<td>"+status+"</td>");
				out.println("</tr>");
			}
			out.println("</table>");
            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println("e= "+e);
        }


%>
