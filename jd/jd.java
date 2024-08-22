package jd;
import java.sql.*;
public class jd
{
		public Statement getConn() 
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