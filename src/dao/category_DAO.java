package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.category;

public class category_DAO {

	public category_DAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static ArrayList<category> LoadDanhMucSanPhamCap1(){
		ArrayList<category> ls = new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();
		
		try {
			
			CallableStatement cs = DBConnect.getMySQLConnection().prepareCall("select * from category");
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				category dm = new category();
				dm.setCategoryID(rs.getInt("idcategory"));
				dm.setCategoryName(rs.getString("category_name"));
				ls.add(dm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(cnn!=null) {
				try {
					cnn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.println("Error : Khong the close Connection");
				}
			}
		}
		return ls;
	}
	
	
}
