
package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Value;


public class ChartDAO {

    public static ArrayList<Value> TinhDoanhThu(Date date1,Date date2 ) {
        try {
            ArrayList<Value> list = new ArrayList<>();
            Connection cnn = DBConnect.getMySQLConnection();
            try {
				CallableStatement cs = cnn.prepareCall("{ call DoanhThuDateToDate(?,?)}");
				cs.setDate(1, date1);
				cs.setDate(2, date2);
				ResultSet rs =cs.executeQuery();
				while(rs.next()) {
					Value x = new Value();
					x.setName(rs.getString("category_name"));
					x.setValue(rs.getInt("DoanhThu"));
					list.add(x);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				if(cnn!=null) {
					cnn.close();
				}
			}
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
    	Date date1 = java.sql.Date.valueOf("2018-12-10");
    	Date date2 = java.sql.Date.valueOf("2018-12-10");
		      
        for(Value v : new ChartDAO().TinhDoanhThu(date1, date2)){
            System.out.println(v.getName() + " - "+v.getValue());
        }
    }

}
