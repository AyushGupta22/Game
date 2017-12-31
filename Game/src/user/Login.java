package user;

import java.sql.*;

public class Login {

	public static boolean validate(LoginBean log){
		boolean status=false;
               
		
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mysql:///Game","root","");
			//Statement stmt=con.createStatement();
			PreparedStatement ps=con.prepareStatement("select Id,Email,Password from user where Email=? and Password=? and AccountStatus=? ");
			ps.setString(1,log.getUser());
			ps.setString(2, log.getPswd());
			ps.setInt(3,1);
			
			ResultSet rs=ps.executeQuery();
                        status=rs.next();
                       // HttpSession session = request.getSession();
                       if(status)
                            log.setId(rs.getInt(1));
                       
       // session.setAttribute("MyAttribute", "test value");
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
	
	public static boolean validateAdmin(LoginBean log){
		boolean status=false;
               
		
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mysql:///Game","root","");
			//Statement stmt=con.createStatement();
			PreparedStatement ps=con.prepareStatement("select Id,Email,Password from admin where Email=? and Password=? ");
			ps.setString(1,log.getUser());
			ps.setString(2, log.getPswd());
			ResultSet rs=ps.executeQuery();
                        status=rs.next();
                       // HttpSession session = request.getSession();
                       if(status)
                            log.setId(rs.getInt(1));
                       
       // session.setAttribute("MyAttribute", "test value");
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
}
