package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.category_child_DAO;

@WebServlet("/deleteCategory-child")
public class deleteCategory_child_CTR extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public deleteCategory_child_CTR() {
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		int kq=0;
		try {
			kq = category_child_DAO.DeleteDanhMuc(id);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		if(kq >0) {
			resp.sendRedirect(req.getContextPath()+"/category-child");;
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
