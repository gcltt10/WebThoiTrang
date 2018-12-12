package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.category_child;

public class category_child_DAO {

	public category_child_DAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static ArrayList<category_child> LoadDanhMucSanPhamCap2(int categoryID) {
		ArrayList<category_child> ls =new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			CallableStatement cs =cnn.prepareCall("select * from category_child where categoryID = ?");
			cs.setInt(1, categoryID);
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				category_child x =new category_child();
				x.setIdcategory_id(rs.getInt("category_child_id"));
				x.setCategory_child_name(rs.getString("category_child_name"));
				ls.add(x);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(cnn!=null) {
				try {
					cnn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return ls;
	}
	
}
