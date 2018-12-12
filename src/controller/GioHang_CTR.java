package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GIOHANG_MODEL;
import dao.Product_DAO;
import model.MonHang;
import model.product;

/**
 * Servlet implementation class GIoHang_CTR
 */
@WebServlet("/GioHang")
public class GioHang_CTR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioHang_CTR() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String masp=request.getParameter("masp");
		HttpSession session = ((HttpServletRequest)request).getSession(true);
		GIOHANG_MODEL giohang_mod=(GIOHANG_MODEL)session.getAttribute("giohang");
		giohang_mod.xoaMonhang(Integer.parseInt(masp));
		session.setAttribute("giohang", giohang_mod);
		response.sendRedirect("giohang.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MonHang monhang_obj = new MonHang();
		GIOHANG_MODEL giohang_mod;
		request.setCharacterEncoding("UTF-8");
		String masp = request.getParameter("txtProductID");
		String soluong =request.getParameter("soluong");
		product sp= Product_DAO.FindSanPhamByID(masp);
		
		monhang_obj.setMasp(sp.getIdproduct());
		monhang_obj.setTensp(sp.getProduct_name());
		monhang_obj.setGiasp(sp.getPrice());
		monhang_obj.setImg(sp.getImg());
		monhang_obj.setSoluong(Integer.parseInt(soluong));
		HttpSession session = request.getSession(true);
		if ((GIOHANG_MODEL) session.getAttribute("giohang") == null) {
			giohang_mod = new GIOHANG_MODEL();
			giohang_mod.themMonhang(monhang_obj);
			session.setAttribute("giohang", giohang_mod);
			response.sendRedirect(request.getContextPath()+"/TrangChu");
		} else {
			giohang_mod = (GIOHANG_MODEL) session.getAttribute("giohang");
			giohang_mod.themMonhang(monhang_obj);
			session.setAttribute("giohang", giohang_mod);
			response.sendRedirect(request.getContextPath()+"/TrangChu");
		}
	}

}
