package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Product_DAO;
import model.product;

/**
 * Servlet implementation class DanhMucSanPham_CTR
 */
@WebServlet("/DanhMucSanPham")
public class DanhMucSanPham_CTR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DanhMucSanPham_CTR() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String categoryID = request.getParameter("categoryID");
		String category_child_Id = request.getParameter("category-child-id");
		String page = request.getParameter("page");
		
		if(page==null)	page="1"; // Kiem tra page
		int limit = 6 ; // So luong record/ page
		
		if(categoryID !=null) {
			ArrayList<product> ls = Product_DAO.LoadDanhSachSanPhamByCategoryID(Integer.parseInt(categoryID), Integer.parseInt(page), limit);
			request.setAttribute("key", "categoryID");
			request.setAttribute("id", category_child_Id);
			request.setAttribute("dsSanPham", ls);
			request.getRequestDispatcher("/User/danh-sach-san-pham.jsp").forward(request, response);
		}else {
			ArrayList<product> ls = Product_DAO.LoadDanhSachSanPhamByCategory_ChildID(Integer.parseInt(category_child_Id), Integer.parseInt(page), limit);
			request.setAttribute("key", "category-child-id");
			request.setAttribute("id", category_child_Id);
			request.setAttribute("dsSanPham", ls);
			request.getRequestDispatcher("/User/danh-sach-san-pham.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
