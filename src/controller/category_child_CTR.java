package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.category_child_DAO;
import model.category_child;

@WebServlet("/category-child")
public class category_child_CTR extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public category_child_CTR() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<category_child> ls = null;
		try {
			ls = category_child_DAO.LoadDanhMucSanPhamCap2();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("dsCategory_child", ls);
		request.getRequestDispatcher("/WEB-INF/Admin/manager-category-cap2.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
