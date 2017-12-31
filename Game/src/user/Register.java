package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Register{
	
	public static boolean register(String fname,String lname,String email,String num,String address,String pass) {
boolean status=false;
               
		
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con= DriverManager.getConnection("jdbc:mysql:///Game","root","");
			//Statement stmt=con.createStatement();
			PreparedStatement ps=con.prepareStatement("insert into user(FirstName,LastName,Email,PhoneNo,Address,Password,AccountStatus) Values(?,?,?,?,?,?,?) ");
			ps.setString(1,fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, num);
			ps.setString(5, address);
			ps.setString(6, pass);
			ps.setInt(7,1);
			
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