package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.product;

public class Product_DAO {
	
	public static ArrayList<product> LoadDanhSachSanPhamGiaGia(int page, int limit){
		ArrayList<product> ls  = new ArrayList<>();
		Connection cnn= DBConnect.getMySQLConnection();
		
		try {
			CallableStatement cs= cnn.prepareCall("{ call LoadDanhSachSanPhamGiamGia(?,?) }");
			cs.setInt(1, page);
			cs.setInt(2, limit);
			ResultSet rs=  cs.executeQuery();
			while(rs.next()) {
				product sp = new product();
				sp.setIdproduct(rs.getInt("idproduct"));
				sp.setProduct_name(rs.getString("product_name"));
				sp.setPrice(rs.getFloat("price"));
				sp.setDiscount(rs.getInt("discout"));
				sp.setImg(rs.getString("img"));
				ls.add(sp);
			}
		} catch (Exception e) {
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
	
	public static ArrayList<product> LoadDanhSachSanPhamByCategoryID(int categoryID,int page,int limit){
		ArrayList<product> ls
	}
}
