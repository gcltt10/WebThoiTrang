package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.category;

public class category_DAO {

	public category_DAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static ArrayList<category> LoadDanhMucSanPhamCap1() throws ClassNotFoundException{
		ArrayList<category> ls = new ArrayList<>();
		try {
			
			CallableStatement cs = DBConnect.getMySQLConnection().prepareCall("select * from category");
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				category dm = new category();
			
				ls.add(dm);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ls;
	}
}
