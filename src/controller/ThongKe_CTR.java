package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ChartDAO;
import model.Value;

/**
 * Servlet implementation class ThongKe_CTR
 */
@WebServlet("/ThongKe")
public class ThongKe_CTR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThongKe_CTR() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/Admin/manager-chart.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date1 = request.getParameter("txtDate1");
		String date2 = request.getParameter("txtDate2");
		ArrayList<Value> ls = ChartDAO.TinhDoanhThu(java.sql.Date.valueOf(date1), java.sql.Date.valueOf(date2));
		
		// Tinh tong danh thu
		int sum = 0;
		for(int i=0;i<ls.size();i++) {
			sum+= ls.get(i).getValue();
		}
		request.setAttribute("dsDoanhThu", ls);
		request.setAttribute("TongDoanhThu", sum);
		request.setAttribute("date1", date1);
		request.setAttribute("date2", date2);
		request.getRequestDispatcher("/WEB-INF/Admin/manager-chart.jsp").forward(request, response);
	}

}
