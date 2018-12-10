package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Customer_DAO;
import model.customer;

@WebServlet(urlPatterns = { "/QuanLyKhachHang", "/QuanLyKhachHang/ThemKhachHang", "/QuanLyKhachHang/EditKhachHang",
		"/QuanLyKhachHang/XoaKhachHang" })
public class QuanLyKhachHang_CTR extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public QuanLyKhachHang_CTR() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String servletPath = request.getServletPath();
		System.out.println(servletPath);
		if (servletPath.contains("/ThemKhachHang")) {
			int customerID = Customer_DAO.TaoCustomerID();
			request.setAttribute("CustomerID",customerID);
			request.getRequestDispatcher("/WEB-INF/Admin/add-customer.jsp").forward(request, response);
		} else if (servletPath.contains("/XoaKhachHang")) {
			String CustomerId=request.getParameter("CustomerID");
			System.out.println(CustomerId);
		} else if (servletPath.contains("/EditKhachHang")) {
			String CustomerId = request.getParameter("CustomerID");
			customer ct = Customer_DAO.FindCustomerById(CustomerId);
			request.setAttribute("Khachhang", ct);
			request.getRequestDispatcher("/WEB-INF/Admin/edit-customer.jsp").forward(request, response);
		} else {
			List<customer> ls = null;
			ls = Customer_DAO.LoadDanhSachKhachHang();
			request.setAttribute("dsKhachHang", ls);
			request.getRequestDispatcher("/WEB-INF/Admin/manager-customer.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String servletPath = request.getServletPath();
		System.out.println(servletPath);
		if (servletPath.contains("/EditKhachHang")) {
			String customerID = request.getParameter("txtCustomerID");
			String customerName = request.getParameter("txtCustomerName");
			String customerEmail = request.getParameter("txtEmail");
			String customerPhone = request.getParameter("txtPhone");
			String customerBirthday = request.getParameter("txtBirthDay");
			String customerAddress = request.getParameter("txtAddress");
			String customerGioiTinh = request.getParameter("txtGioiTinh");
			String customerUserName = request.getParameter("txtUserName");
			String customerPassword = request.getParameter("txtPassword");
			
			customer ct = new customer();

			java.sql.Date birthday = java.sql.Date.valueOf(customerBirthday);
			Boolean gioitinh ;
			if(customerGioiTinh.equals("1"))
				gioitinh = true;
			else
				gioitinh=false;
			
			ct.setIdcustomer(Integer.parseInt(customerID));
			ct.setCustomer_name(customerName);
			ct.setEmail(customerEmail);
			ct.setPhone(customerPhone);
			ct.setAddress(customerAddress);
			ct.setSex(gioitinh);
			ct.setUsername(customerUserName);
			ct.setPassword(customerPassword);
			ct.setBirthday(birthday);
			
			int kq = 0;
			kq = Customer_DAO.UpdateKhachHang(ct);
			
			if(kq>0)
				response.sendRedirect(request.getContextPath()+"/QuanLyKhachHang");	
		}
	}

}
