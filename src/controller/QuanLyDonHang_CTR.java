package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Bill_DAO;
import dao.Customer_DAO;
import model.MonHang;
import model.bills;
import model.customer;

/**
 * Servlet implementation class QuanLyDonHang
 */
@WebServlet(urlPatterns = {"/QuanLyDonHang","/QuanLyDonHang/ChiTietDonHang"})
public class QuanLyDonHang_CTR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuanLyDonHang_CTR() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath = request.getServletPath();
		System.out.println(servletPath);
		if(servletPath.contains("/ChiTietDonHang")) {
			String billID = request.getParameter("BillID");
			
			bills hoadon = Bill_DAO.FindBillByBillID(billID);
			customer ct = Customer_DAO.FindCustomerByBillID(billID);
			ArrayList<MonHang> ls = Bill_DAO.LoadChiTietBill(billID);
			request.setAttribute("khachhang", ct);
			request.setAttribute("hoadon", hoadon);
			request.setAttribute("dsSanPham", ls);
			request.getRequestDispatcher("/WEB-INF/Admin/infor-bill.jsp").forward(request, response);
		}else {
			ArrayList<bills> ls = Bill_DAO.LoadDanhSachBills();
			request.setAttribute("dsHoaDon", ls);
			request.getRequestDispatcher("/WEB-INF/Admin/manager-bills.jsp").forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
