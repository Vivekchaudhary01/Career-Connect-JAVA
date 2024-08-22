
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class change_car extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
		String s=request.getParameter("n");
String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="",s15="",s16="",s17="",s18="",s19="",s20="",s21="";
boolean b=false;
		        try {

            String url = "jdbc:mysql://localhost:3306/coachng";
            Connection conn = DriverManager.getConnection(url,"root","");
            Statement stmt = conn.createStatement();
            ResultSet rs;
            rs = stmt.executeQuery("SELECT * FROM car_reg where name='"+s+"' ");
			System.err.println("44444 ");
			boolean b1=false;
        while(rs.next() )
					{
			 s1=rs.getString("name");
			 s2=rs.getString("number");
			s3=rs.getString("colour");
			 s4=rs.getString("mileage");
			s5=rs.getString("rpm");
			 s6=rs.getString("capacity");
			 			 s7=rs.getString("type");
			 			 s8=rs.getString("mno");
			 			 s9=rs.getString("mname");
			 			 s10=rs.getString("length");
			 			 s11=rs.getString("width");
			 			 s12=rs.getString("height");
			 			 s13=rs.getString("weight");
			 			 s14=rs.getString("seat");
			 			 s15=rs.getString("door");
			 			 s16=rs.getString("window");
			 			 s17=rs.getString("disk_b");
			 			 s18=rs.getString("power_b");
			 			 s19=rs.getString("hand_b");
			 			 s20=rs.getString("r_cam");
			 			 s21=rs.getString("r_mirror");

			

					}
					



            
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
out.println("<form action=http://localhost:8088/examples/update>");

out.println("<table>");
out.println("<tr><td>Model Name</td><td><input type=text value="+s1+" name=n1 /></td></tr>");
out.println("<tr><td>Model Number</td><td><input type=text value="+s2+" name=n2 /></td></tr>");
out.println("<tr><td>Colour</td><td><input type=text value="+s3+" name=n3 /></td></tr>");
out.println("<tr><td>Mileage</td><td><input type=text value="+s4+" name=n4 /></td></tr>");
out.println("<tr><td>Rpm</td><td><input type=text value="+s5+" name=n5 /></td></tr>");
out.println("<tr><td>Capacity</td><td><input type=text value="+s6+" name=n6 /></td></tr>");

if(s7.equals("diesel")){
out.println("<tr><td>Car Type</td><td><input type=radio  name=type value=diesel checked /> Diesel </td></tr>");
out.println("<tr><td></td><td><input type=radio  name=type value=petrol /> Petrol</td></tr>");}
else
		{
	out.println("<tr><td>Car Type</td><td><input type=radio  name=type value=diesel  />Diesel </td></tr>");
out.println("<tr><td></td><td>Female<input type=radio  name=type value=petrol checked /> Petrol</td></tr>");}
out.println("<tr><td>Engine Model Number</td><td><input type=text value="+s8+" name=n7 /></td></tr>");
out.println("<tr><td>Engine Model Name</td><td><input type=text value="+s9+" name=n8 /></td></tr>");
out.println("<tr><td>Length</td><td><input type=text value="+s10+" name=n9 /></td></tr>");
out.println("<tr><td>Width</td><td><input type=text value="+s11+" name=n10 /></td></tr>");
out.println("<tr><td>Height</td><td><input type=text value="+s12+" name=n11 /></td></tr>");
out.println("<tr><td>Weight</td><td><input type=text value="+s13+" name=n12 /></td></tr>");
out.println("<tr><td>Number of seats</td<td>");
out.println("<select name=s>");
if(s14.equals("1"))
out.println("<option value=1 selected>1</option>");
else
	out.println("<option value=1 >1</option>");
if(s14.equals("2"))
out.println("<option value=2 selected>2</option>");
else
	out.println("<option value=2 >2</option>");
if(s14.equals("3"))
out.println("<option value=3 selected>3</option>");
else
	out.println("<option value=3 >3</option>");
if(s14.equals("4"))
out.println("<option value=4 selected>4</option>");
else
	out.println("<option value=4 >4</option>");
	if(s14.equals("5"))
out.println("<option value=5 selected>5</option>");
else
	out.println("<option value=5 >5</option>");
if(s14.equals("6"))
out.println("<option value=6 selected>6</option>");
else
	out.println("<option value=6 >6</option>");
if(s14.equals("7"))
out.println("<option value=7 selected>7</option>");
else
	out.println("<option value=7 >7</option>");
if(s14.equals("8"))
out.println("<option value=8 selected>8</option>");
else
	out.println("<option value=8 >8</option>");
if(s14.equals("9"))
out.println("<option value=9 selected>9</option>");
else
	out.println("<option value=9 >9</option>");
if(s14.equals("10"))
out.println("<option value=10 selected>10</option>");
else
	out.println("<option value=10 >10</option>");
out.println("</select>");
out.println("</td></tr>");
out.println("<tr><td>Number of doors</td<td>");

out.println("<select name=d>");
if(s15.equals("1"))
out.println("<option value=1 selected>1</option>");
else
	out.println("<option value=1 >1</option>");
if(s15.equals("2"))
out.println("<option value=2 selected>2</option>");
else
	out.println("<option value=2 >2</option>");
if(s15.equals("3"))
out.println("<option value=3 selected>3</option>");
else
	out.println("<option value=3 >3</option>");
if(s15.equals("4"))
out.println("<option value=4 selected>4</option>");
else
	out.println("<option value=4 >4</option>");
	if(s15.equals("5"))
out.println("<option value=5 selected>5</option>");
else
	out.println("<option value=5 >5</option>");
if(s15.equals("6"))
out.println("<option value=6 selected>6</option>");
else
	out.println("<option value=6 >6</option>");
if(s15.equals("7"))
out.println("<option value=7 selected>7</option>");
else
	out.println("<option value=7 >7</option>");
if(s15.equals("8"))
out.println("<option value=8 selected>8</option>");
else
	out.println("<option value=8 >8</option>");
if(s15.equals("9"))
out.println("<option value=9 selected>9</option>");
else
	out.println("<option value=9 >9</option>");
if(s15.equals("10"))
out.println("<option value=10 selected>10</option>");
else
	out.println("<option value=10 >10</option>");
out.println("</select>");
out.println("</td></tr>");
out.println("<tr><td>Number of windows</td<td>");;

out.println("<select name=w>");
if(s16.equals("1"))
out.println("<option value=1 selected>1</option>");
else
	out.println("<option value=1 >1</option>");
if(s16.equals("2"))
out.println("<option value=2 selected>2</option>");
else
	out.println("<option value=2 >2</option>");
if(s16.equals("3"))
out.println("<option value=3 selected>3</option>");
else
	out.println("<option value=3 >3</option>");
if(s16.equals("4"))
out.println("<option value=4 selected>4</option>");
else
	out.println("<option value=4 >4</option>");
	if(s16.equals("5"))
out.println("<option value=5 selected>5</option>");
else
	out.println("<option value=5 >5</option>");
if(s16.equals("6"))
out.println("<option value=6 selected>6</option>");
else
	out.println("<option value=6 >6</option>");
if(s16.equals("7"))
out.println("<option value=7 selected>7</option>");
else
	out.println("<option value=7 >7</option>");
if(s16.equals("8"))
out.println("<option value=8 selected>8</option>");
else
	out.println("<option value=8 >8</option>");
if(s16.equals("9"))
out.println("<option value=9 selected>9</option>");
else
	out.println("<option value=9 >9</option>");
if(s16.equals("10"))
out.println("<option value=10 selected>10</option>");
else
	out.println("<option value=10 >10</option>");
out.println("</td></tr>");




out.println("<tr><td>Types of Brakes</td><td>");
if(s17.equals("disk_brake"))
	out.println("<tr><td></td><td><input type=checkbox name=check1 value=disk_brake checked  />DISK BRAKE </td></tr>");
else
	out.println("<tr><td></td><td><input type=checkbox name=check1 value=disk_brake  />DISK BRAKE </td></tr>");
if(s18.equals("power_brake"))
	out.println("<tr><td></td><td><input type=checkbox name=check2 value=power_brake checked  />POWER BRAKE </td></tr>");
else
	out.println("<tr><td></td><td><input type=checkbox name=check2 value=power_brake  />POWER BRAKE </td></tr>");
if(s19.equals("hand_brake"))
	out.println("<tr><td></td><td><input type=checkbox name=check3 value=hand_brake checked  />HAND BRAKE </td></tr>");
else
	out.println("<tr><td></td><td><input type=checkbox name=check3 value=hand_brake  />HAND BRAKE </td></tr>");



out.println("<tr><td></td><td><input type=submit value=OK />");
out.println("</td></tr></table>");
		out.println("</form>");

		out.println("</body>");
        out.println("</html>");
    }
}