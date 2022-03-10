/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Models.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Map;
import Models.Cart;
import Models.Product;
import Models.UserOrder;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Egamorft
 */
public class OrderDetailDAO {

    public boolean insert(Map<String, Cart> cartMap, int orderId) {
        int numRow = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                    + "           ([Order_ID]\n"
                    + "           ,[Product_ID]\n"
                    + "           ,[Product_Name]\n"
                    + "           ,[Product_Price]\n"
                    + "           ,[Quantity]\n"
                    + "           ,[Product_Image])\n"
                    + "              VALUES\n"
                    + "           (?,?,?,?,?,?)";
            int[] a = {};
            PreparedStatement ps = conn.prepareStatement(sql);
            for (Map.Entry<String, Cart> entry : cartMap.entrySet()) {
                String productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(1, orderId);
                ps.setString(2, cart.getProduct().getId());
                ps.setString(3, cart.getProduct().getName());
                ps.setFloat(4, cart.getProduct().getPrice());
                ps.setInt(5, cart.getQuantity());
                ps.setString(6, cart.getProduct().getImageUrl());
                ps.addBatch();
            }
            a = ps.executeBatch();
            numRow = a.length;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return numRow > 0;
    }

    public UserOrder order(Account account) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select Product_ID, Product_Image, Product_Name, Quantity, Product_Price, Status_ID \n"
                    + "from OrderDetail od left join [Order] o \n"
                    + "on od.Order_ID = o.Order_ID \n"
                    + "where Customer = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, account.getUsername());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserOrder userOrder = UserOrder.builder()
                        .productID(rs.getString(1))
                        .username(rs.getString(2))
                        .image(rs.getString(3))
                        .name(rs.getString(4))
                        .quantity(rs.getInt(5))
                        .price(rs.getFloat(6))
                        .status(rs.getString(7))
                        .build();
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
