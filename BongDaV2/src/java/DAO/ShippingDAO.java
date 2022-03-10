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
import Models.Product;
import Models.Shipping;

/**
 *
 * @author Egamorft
 */
public class ShippingDAO {

    public int insertReturnId(Shipping shipping) {
        int numRow = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Ship]\n"
                    + "           ([Name]\n"
                    + "           ,[DOB]\n"
                    + "           ,[Email]\n"
                    + "           ,[Phone]\n"
                    + "           ,[Address]\n"
                    + "           ,[Note])\n"
                    + "             VALUES\n"
                    + "           (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, shipping.getName());
            ps.setString(2, shipping.getDOB());
            ps.setString(3, shipping.getEmail());
            ps.setString(4, shipping.getPhone());
            ps.setString(5, shipping.getAddress());
            ps.setString(6, shipping.getNote());

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
