package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.customer;

public class Customer_DAO {

	public Customer_DAO() {

	}

	public static int TaoCustomerID() {
		int maxCustomerID = 0;
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			CallableStatement cs = cnn.prepareCall("select MAX(idcustomer) as MAXID from customer");
			ResultSet rs = cs.executeQuery();
			if(rs.next()) {
				maxCustomerID= rs.getInt("MAXID");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return maxCustomerID+1;
	}
	
	public static int UpdateKhachHang(customer kh) {
		int kq = 0;
		Connection cnn=DBConnect.getMySQLConnection();
		try {
			String sql = "update customer set customer_name = ? , sex= ? , birthday= ? , address = ? , phone= ?, email = ? "
					+ "where idcustomer= ?";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setString(1, kh.getCustomer_name());
			cs.setBoolean(2, kh.getSex());
			cs.setDate(3, kh.getBirthday());
			cs.setString(4, kh.getAddress());
			cs.setString(5, kh.getPhone());
			cs.setString(6, kh.getEmail());
			cs.setInt(7, kh.getIdcustomer());
			kq=cs.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			kq=0;
		}finally {
			if (cnn != null) {
				try {
					cnn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}	
		return kq;
	} 
	
	public static List<customer> LoadDanhSachKhachHang() {
		List<customer> ls = new ArrayList<customer>();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			String sql = "select * from customer";
			CallableStatement cs = cnn.prepareCall(sql);
			ResultSet rs = cs.executeQuery();
			while (rs.next()) {
				customer ct = new customer();
				ct.setIdcustomer(rs.getInt("idcustomer"));
				ct.setCustomer_name(rs.getString("customer_name"));
				ct.setSex(rs.getBoolean("sex"));
				ct.setBirthday(rs.getDate("birthday"));
				ct.setAddress(rs.getString("address"));
				ct.setPhone(rs.getString("phone"));
				ct.setEmail(rs.getString("email"));
				ct.setUsername(rs.getString("username"));
				ls.add(ct);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (cnn != null) {
				try {
					cnn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		return ls;
	}
	
	public static customer FindCustomerById(String customerID){
		customer ct =new customer();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			String sql = "select * from customer inner join useraccount on customer.username = useraccount.Username where idcustomer=?";
			CallableStatement cs= cnn.prepareCall(sql);
			cs.setInt(1, Integer.parseInt(customerID));
			ResultSet rs= cs.executeQuery();
			if(rs.next()) {
				ct.setIdcustomer(rs.getInt("idcustomer"));
				ct.setCustomer_name(rs.getString("customer_name"));
				ct.setSex(rs.getBoolean("sex"));
				ct.setBirthday(rs.getDate("birthday"));
				ct.setAddress(rs.getString("address"));
				ct.setPhone(rs.getString("phone"));
				ct.setEmail(rs.getString("email"));
				ct.setUsername(rs.getString("username"));
				ct.setPassword(rs.getString("Password"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			if (cnn != null) {
				try {
					cnn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return ct;
	}
}
