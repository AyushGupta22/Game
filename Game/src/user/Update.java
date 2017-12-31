package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Update{
	
	public static boolean updat(String id,String fname,String lname,String email,String num,String address) {
boolean status=false;
               
		
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mysql:///Game","root","");
			//Statement stmt=con.createStatement();
			PreparedStatement ps=con.prepareStatement("Update user set FirstName=?,LastName=?,Email=?,PhoneNo=?,Address=? where id = "+id);
			ps.setString(1,fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, num);
			ps.setString(5, address);
			
			int i =ps.executeUpdate();
                       // HttpSession session = request.getSession();
                       if(i > 0)
                            status = true;
                       else
                    	   status = false;
                       
       // session.setAttribute("MyAttribute", "test value");
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
	
	public static boolean delete(String id) {
boolean status=false;
               
		
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mysql:///Game","root","");
			//Statement stmt=con.createStatement();
			PreparedStatement ps=con.prepareStatement("Delete * from user where id = "+id);
			
			
			int i =ps.executeUpdate();
                       // HttpSession session = request.getSession();
                       if(i > 0)
                            status = true;
                       else
                    	   status = false;
                       
       // session.setAttribute("MyAttribute", "test value");
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
		
		
	}
	
}