package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.product;

public class Product_DAO {
	
	public static product FindSanPhamByID(String productID) {
		product sp = new product();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			String sql="select product.*,promotion.discout from product inner join promotion on product.id_promotion = promotion.idpromotion where product.idproduct = ?";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setInt(1,Integer.parseInt(productID));
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				sp.setIdproduct(rs.getInt("idproduct"));
				sp.setProduct_name(rs.getString("product_name"));
				sp.setPrice(rs.getFloat("price"));
				sp.setImg(rs.getString("img"));
				sp.setDiscount(rs.getInt("discout"));
				sp.setNsx(rs.getString("nsx"));
				sp.setColors(rs.getInt("colors"));
				sp.setSizes(rs.getString("sizes"));
				sp.setMaterial(rs.getString("material"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(cnn!=null) {
				try {
					cnn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return sp;
	}
	
	
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
		ArrayList<product> ls =new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();
		
		try {
			CallableStatement cs= cnn.prepareCall("{ call LoadDanhSachSanPhamByCategoryID_phantrang(?,?,?) }");
			cs.setInt(1, categoryID);
			cs.setInt(2, page);
			cs.setInt(3, limit);
			ResultSet rs= cs.executeQuery();
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
					e.printStackTrace();
				}
			}
		}
		return ls;
	}
	
	public static ArrayList<product> LoadDanhSachSanPhamByCategory_ChildID(int category_child_ID,int page,int limit){
		ArrayList<product> ls = new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			CallableStatement cs= cnn.prepareCall("{ call LoadDanhSachSanPhamByCategory_ChildID_phantrang(?,?,?) }");
			cs.setInt(1, category_child_ID);
			cs.setInt(2, page);
			cs.setInt(3, limit);
			ResultSet rs =cs.executeQuery();
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
			if(cnn!=null)
				try {
					cnn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		return ls;
	}
}
