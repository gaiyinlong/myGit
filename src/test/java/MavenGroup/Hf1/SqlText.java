package MavenGroup.Hf1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SqlText {

	public static void main(String[] args) {
		Connection conn;
		        Statement stmt;
		       ResultSet rs;
	        String url = "jdbc:sqlserver://wxhrsoft.6655.la:61651;DatabaseName=gaiyinlong;";
	       String sql = "select * from hf_users";
	       try {
	           // 连接数据库
		            conn = DriverManager.getConnection(url, "sa", "7532147");
		             // 建立Statement对象
		            stmt = conn.createStatement();
		            /**
		              * Statement createStatement() 创建一个 Statement 对象来将 SQL 语句发送到数据库。
		              */
	            // 执行数据库查询语句
		             rs = stmt.executeQuery(sql);
	            /**
		              * ResultSet executeQuery(String sql) throws SQLException 执行给定的 SQL
		              * 语句，该语句返回单个 ResultSet 对象
		             */
		             while (rs.next()) {
		                 int id = rs.getInt("uid");
	                 String name = rs.getString("username");
	                 String pass = rs.getString("userpass");
	                System.out.println("uid:" + id + "\t username:" + name + "\t userpass:" + pass);
	            }
		            if (rs != null) {
		                 rs.close();
	                rs = null;
	            }
	             if (stmt != null) {
	               stmt.close();
		                stmt = null;
		             }
	            if (conn != null) {
		                 conn.close();
		                 conn = null;
		             }
	         } catch (SQLException e) {
		          e.printStackTrace();
		             System.out.println("数据库连接失败");
	        }
	    }
}