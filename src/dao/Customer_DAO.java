package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.customer;
import model.useraccount;

public class Customer_DAO {

	public Customer_DAO() {

	}

	public static ArrayList<customer> SearchCustomerByName(String name) {
		ArrayList<customer> ls = new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			String sql = "select * from customer where customer.customer_name like concat('%',convert(?,binary),'%')";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setString(1, name);
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

	public static int CreateKhachHang(customer kh, useraccount tk) {
		int kq = 0;
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			cnn.setAutoCommit(false);
			CallableStatement cs = cnn.prepareCall("{ call ThemTaiKhoan(?,?,?,?,?,?,?,?,?,?) }");
			cs.setInt(1, kh.getIdcustomer());
			cs.setString(2, kh.getCustomer_name());
			cs.setBoolean(3, kh.getSex());
			cs.setDate(4, kh.getBirthday());
			cs.setString(5, kh.getAddress());
			cs.setString(6, kh.getPhone());
			cs.setString(7, kh.getEmail());
			cs.setString(8, tk.getUsename());
			cs.setString(9, tk.getPassword());
			cs.setString(10, tk.getStatus());
			kq = cs.executeUpdate();

			if (kq == 0)
				cnn.rollback();
			else {
				cnn.commit();
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
		return kq;
	}

	public static int TaoCustomerID() {
		int maxCustomerID = 0;
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			CallableStatement cs = cnn.prepareCall("select MAX(idcustomer) as MAXID from customer");
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
				maxCustomerID = rs.getInt("MAXID");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return maxCustomerID + 1;
	}

	public static int UpdateKhachHang(customer kh, useraccount tk) {
		int kq = 0;
		Connection cnn = DBConnect.getMySQLConnection();
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
			kq = cs.executeUpdate();

			cs.clearParameters();
			cs = cnn.prepareCall("update useraccount set password= ? where Username = ?");
			cs.setString(1, tk.getPassword());
			cs.setString(2, tk.getUsename());
			kq = cs.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			kq = 0;
		} finally {
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

	public static customer FindCustomerById(String customerID) {
		customer ct = new customer();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			String sql = "select * from customer inner join useraccount on customer.username = useraccount.Username where idcustomer=?";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setInt(1, Integer.parseInt(customerID));
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
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
		} finally {
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

	public static customer FindCustomerByBillID(String billID) {
		customer ct = new customer();
		Connection cnn = DBConnect.getMySQLConnection();

		try {
			String sql = "select customer.* from customer inner join bills on customer.idcustomer = bills.id_customers where bills.idbills = ?";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setInt(1, Integer.parseInt(billID));
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
				ct.setIdcustomer(rs.getInt("idcustomer"));
				ct.setCustomer_name(rs.getString("customer_name"));
				ct.setSex(rs.getBoolean("sex"));
				ct.setBirthday(rs.getDate("birthday"));
				ct.setAddress(rs.getString("address"));
				ct.setPhone(rs.getString("phone"));
				ct.setEmail(rs.getString("email"));
				ct.setUsername(rs.getString("username"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
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
