package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.category_DAO;
import model.category;

@WebServlet("/Category")
public class category_CTR extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public category_CTR() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<category> ls = null;
		try {
			ls = category_DAO.LoadDanhMucSanPhamCap1();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("dsCategory", ls);
		request.getRequestDispatcher("/WEB-INF/Admin/manager-category-cap1.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
