package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.MonHang;
import model.bills;

public class Bill_DAO {

	public Bill_DAO() {

	}

	public static ArrayList<bills> LoadDanhSachBills() {
		ArrayList<bills> ls = new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();

		try {
			String sql = "select bills.*,customer.customer_name from bills inner join customer on bills.id_customers = customer.idcustomer";
			CallableStatement cs = cnn.prepareCall(sql);
			ResultSet rs = cs.executeQuery();
			while (rs.next()) {
				bills hoadon = new bills();
				hoadon.setBillID(rs.getInt("idbills"));
				hoadon.setCustomerID(rs.getInt("id_customers"));
				hoadon.setDateOrders(rs.getDate("date_orders"));
				hoadon.setCustomerName(rs.getString("customer_name"));
				hoadon.setTotalMoney(rs.getFloat("total_money"));
				hoadon.setDelivery(rs.getString("delivery"));
				ls.add(hoadon);
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

	public static bills FindBillByBillID(String billID) {
		bills hoadon = new bills();
		Connection cnn = DBConnect.getMySQLConnection();
		try {
			String sql = "select * from bills where idbills = ?";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setInt(1, Integer.parseInt(billID));
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
				hoadon.setBillID(rs.getInt("idbills"));
				hoadon.setCustomerID(rs.getInt("id_customers"));
				hoadon.setDateOrders(rs.getDate("date_orders"));
				hoadon.setTotalMoney(rs.getFloat("total_money"));
				hoadon.setDelivery(rs.getString("delivery"));
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

		return hoadon;
	}

	public static ArrayList<MonHang> LoadChiTietBill(String billID) {
		ArrayList<MonHang> ls = new ArrayList<>();
		Connection cnn = DBConnect.getMySQLConnection();
		
		int count = 0;
		try {
			String sql = "select detail_bills.*,product.product_name from detail_bills inner join product on detail_bills.id_product = product.idproduct where detail_bills.id_bills = ?";
			CallableStatement cs = cnn.prepareCall(sql);
			cs.setInt(1, Integer.parseInt(billID));
			ResultSet rs = cs.executeQuery();
			while (rs.next()) {
				count++;
				MonHang x = new MonHang();
				x.setMasp(rs.getInt("id_product"));
				x.setTensp(rs.getString("product_name"));
				x.setSoluong(rs.getInt("quantity"));
				x.setGiasp(rs.getFloat("Money"));
				
				ls.add(x);
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
	
	public static void main(String[] args) {
		ArrayList<MonHang> ls = null;
		ls = Bill_DAO.LoadChiTietBill("1");
		for(MonHang monhang:ls) {
			System.out.println(monhang.getMasp()+" "+monhang.getTensp());
		}
	}
}
