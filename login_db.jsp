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
			String query = "select * from login where usn = '"+s1+"' and pwd='"+s2+"' ";
			//String query = "select * from login where usn = 'vijit' and pwd='vij123' ";
			out.println("  query="+query);
      rs = stmt.executeQuery(query);
	    		    while ( rs.next() ) 
				{
						bi=true;
                 usn = rs.getString("usn");
				pwd = rs.getString("pwd");
				status = rs.getString("status");
				type = rs.getString("type");
				out.println("  usn="+usn);
				out.println("  pwd="+pwd);
				out.println("  type="+type);

			}



		if(bi)
							{
	if(status.equals("A"))
								{
		if(type.equals("F"))
									{
			      rs = stmt.executeQuery("select eid from emp where usn = '"+s1+"' and pwd='"+s2+"' ");
	    		    while ( rs.next() ) 
							{
		   HttpSession session = request.getSession(true);
//session.setMaxInactiveInterval(600);
				            session.setAttribute("user name", usn);
                 eid = rs.getString("eid");
				 				            session.setAttribute("Emp ID", eid);

							}

  RequestDispatcher dispatcher = request.getRequestDispatcher("/faculty.jsp?usn="+usn+"");

    dispatcher.forward(request, response);
									}
									else if(type.equals("C"))
																			{
										out.println("  in else type="+type);
										      rs = stmt.executeQuery("select cid from company where usn = '"+s1+"' and pwd='"+s2+"' ");
	    		    while ( rs.next() ) 
							{
										bi=true;
										out.println("  in else bi="+bi);
		   HttpSession session = request.getSession(true);
//session.setMaxInactiveInterval(600);
				            session.setAttribute("user name", usn);
                 cid = rs.getString("cid");
				 				            session.setAttribute("Company ID", cid);

							}

  RequestDispatcher dispatcher = request.getRequestDispatcher("/company.jsp?usn="+usn+"");

    dispatcher.forward(request, response);
									}
else
										{
	      rs = stmt.executeQuery("select sid from student where usn = '"+s1+"' and pwd='"+s2+"' ");
	    		    while ( rs.next() ) 
							{
										
										bi=true;
		   HttpSession session = request.getSession(true);
//session.setMaxInactiveInterval(600);
				            session.setAttribute("user name", usn);
                 sid = rs.getString("sid");
				 				            session.setAttribute("Student ID", sid);

							}

  RequestDispatcher dispatcher = request.getRequestDispatcher("/student.jsp?usn="+usn+"");

    dispatcher.forward(request, response);
									}
								}
								else
									out.println("Your Registration has not been validated");
							}
						else
																	{
  RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");

    dispatcher.forward(request, response);
									}

            conn.close();

 } catch (Exception e) {
            System.out.println("Got an exception! ");
            out.println("e= "+e);
        }


%>
