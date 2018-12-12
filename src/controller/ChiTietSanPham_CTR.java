package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Product_DAO;
import model.product;

/**
 * Servlet implementation class ChiTietSanPham_CTR
 */
@WebServlet("/ChiTietSanPham")
public class ChiTietSanPham_CTR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietSanPham_CTR() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productID = request.getParameter("id");
		product sp = Product_DAO.FindSanPhamByID(productID);
		request.setAttribute("InforProduct", sp);
		request.getRequestDispatcher("/User/chi-tiet-san-pham.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
