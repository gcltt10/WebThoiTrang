package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.category_child;

public class category_child_DAO {

	public category_child_DAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static ArrayList<category_child> LoadDanhMucSanPhamCap2() throws ClassNotFoundException{
		ArrayList<category_child> ls =new ArrayList<>();
		try {
			CallableStatement cs =DBConnect.getMySQLConnection().prepareCall("{call LoadCategory_child()}");
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				category_child x =new category_child();
			
				ls.add(x);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return ls;
	}
	
	public static int DeleteDanhMuc(String id) throws ClassNotFoundException {
		int kq=0;
		try {
			String sql ="delete from category_child where category_child_id = "+id;
			CallableStatement cs =DBConnect.getMySQLConnection().prepareCall(sql);
			kq=cs.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return kq;
	}
}
