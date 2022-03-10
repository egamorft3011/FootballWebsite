/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import Models.Order;
import Models.Shipping;

/**
 *
 * @author Egamorft
 */
public class OrderDAO {

    public int insertReturnId(Order order) {
        int numRow = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Order]\n"
                    + "           ([Customer]\n"
                    + "           ,[Total_Price]\n"
                    + "           ,[Note]\n"
                    + "           ,[Status_ID]\n"
                    + "           ,[Ship_ID])\n"
                    + "             VALUES \n"
                    + "           (?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, order.getCustomer());
            ps.setFloat(2, order.getTotalPrice());
            ps.setString(3, order.getNote());
            ps.setString(4, order.getStatus());
            ps.setInt(5, order.getShippingId());
            
            numRow = ps.executeUpdate();
            if (numRow > 0) {
                ResultSet rs = ps.getGeneratedKeys();
                rs.next();
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return 0;
    }
}
