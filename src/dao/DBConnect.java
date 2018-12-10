package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnect {

	public DBConnect() {
		// TODO Auto-generated constructor stub
	}

	public static Connection getMySQLConnection()  {
		String hostName = "localhost";
		String dbName = "web_thoi_trang";
		String userName = "root";
		String password = "123456";
		try {
			return getMySQLConnection(hostName, dbName, userName, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

	}

	public static Connection getMySQLConnection(String hostName, String dbName, String userName, String password)
			throws SQLException, ClassNotFoundException {

		Class.forName("com.mysql.cj.jdbc.Driver");
		String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName+"?characterEncoding=UTF-8";
		Connection conn = DriverManager.getConnection(connectionURL, userName, password);
		return conn;
	}

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection cnn = DBConnect.getMySQLConnection();
		String query = "SELECT * FROM category";
		PreparedStatement ps = cnn.prepareStatement(query);
		ResultSet rs = ps.executeQuery();
		while (rs.next()){
			System.out.print(rs.getString("idcategory")+" ");
			System.out.println(rs.getString("category_name"));
		}
		System.out.println();
		
	}

}
