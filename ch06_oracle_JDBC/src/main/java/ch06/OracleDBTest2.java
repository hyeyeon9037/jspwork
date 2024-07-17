package ch06;

import java.sql.*;

public class OracleDBTest2 {

	public static void main(String[] args) {
		 try {
	         Class.forName("oracle.jdbc.OracleDriver");
	         Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","tjoeun", "1234");
	         System.out.println("Succes");
	         
	         Statement st = con.createStatement();
	         // select문 사용 시 executeQuery() 메소드를 사용한다.
	         ResultSet rs = st.executeQuery("select * from department");

	         while(rs.next()) {
	        	 String id = rs.getString(1);
	        	 String title = rs.getString("dept_title");
	        	 String location = rs.getString(3);
	        	 System.out.println(id + ", " + title + ", " + location );
	         }
	        
	      } catch (SQLException e) {
	         System.out.println("접속 오류");
	      }catch (ClassNotFoundException e) {
	          System.out.println("드라이버 오류");
	       }

	   }
	}

