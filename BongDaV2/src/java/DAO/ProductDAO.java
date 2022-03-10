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
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Models.Product;

/**
 *
 * @author Egamorft
 */
public class ProductDAO implements IMethodDAO<Product> {

    @Override
    public List<Product> getAll() {
        try {
            List<Product> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from product";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getString(1))
                        .code(rs.getString(2))
                        .name(rs.getString(3))
                        .quantity(rs.getInt(4))
                        .price(rs.getFloat(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .status(rs.getString(9))
                        .subCategoryId(rs.getString(10))
                        .CategoryId(rs.getString(11))
                        .build();
                list.add(product);
            }
            return list;
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getAllPaging(int pageIndex, int pageSize) {
        try {
            List<Product> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from product order by Product_ID\n"
                    + "                    OFFSET (?-1)*? ROW FETCH NEXT ? ROW ONLY";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getString(1))
                        .code(rs.getString(2))
                        .name(rs.getString(3))
                        .quantity(rs.getInt(4))
                        .price(rs.getFloat(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .status(rs.getString(9))
                        .subCategoryId(rs.getString(10))
                        .CategoryId(rs.getString(11))
                        .build();
                list.add(product);
            }
            return list;
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int totalProducts() {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select count(*) from product";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return 0;
    }

    @Override
    public Product getOne(String id) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from product where product_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return Product.builder()
                        .id(rs.getString(1))
                        .code(rs.getString(2))
                        .name(rs.getString(3))
                        .quantity(rs.getInt(4))
                        .price(rs.getFloat(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .status(rs.getString(9))
                        .subCategoryId(rs.getString(10))
                        .CategoryId(rs.getString(11))
                        .build();
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    @Override
    public boolean insert(Product product) {
        int numRow = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Product]\n"
                    + "           ([Product_ID]\n"
                    + "           ,[Product_Code]\n"
                    + "           ,[Product_Name]\n"
                    + "           ,[Quantity]\n"
                    + "           ,[Price]\n"
                    + "           ,[Description]\n"
                    + "           ,[Image]\n"
                    + "           ,[Date]\n"
                    + "           ,[Status_ID]\n"
                    + "           ,[Subcategory_ID])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getCode());
            ps.setString(2, product.getName());
            ps.setInt(3, product.getQuantity());
            ps.setFloat(4, product.getPrice());
            ps.setString(5, product.getDescription());
            ps.setString(6, product.getImageUrl());
            ps.setString(7, product.getCreatedDate());
            ps.setString(8, product.getStatus());
            ps.setString(9, product.getSubCategoryId());
            numRow = ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return (numRow > 0);
    }

    @Override
    public boolean update(Product product) {
        int numRow = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE [dbo].[product]\n"
                    + "   SET [Product_Code] = ?\n"
                    + "      ,[Product_Name] = ?\n"
                    + "      ,[Quantity] = ?\n"
                    + "      ,[Price] = ?\n"
                    + "      ,[Description] = ?\n"
                    + "      ,[Image] = ?\n"
                    + "      ,[Date] = ?\n"
                    + "      ,[Status_ID] = ?\n"
                    + "      ,[Subcategory_ID] = ?\n"
                    + " WHERE product_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, product.getCode());
            ps.setString(2, product.getName());
            ps.setInt(3, product.getQuantity());
            ps.setDouble(4, product.getPrice());
            ps.setString(5, product.getDescription());
            ps.setString(6, product.getImageUrl());
            ps.setString(7, product.getCreatedDate());
            ps.setString(8, product.getStatus());
            ps.setString(9, product.getSubCategoryId());
            ps.setString(10, product.getId());
            numRow = ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return (numRow > 0);
    }

    @Override
    public boolean delete(String id) {
        int numRow = 0;
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "DELETE FROM [dbo].[product]\n"
                    + "      WHERE Product_ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            numRow = ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return (numRow > 0);
    }

    public List<Product> filter(String categoryId_str, String subCategoryId_str, int pageIndex, int pageSize) {
        try {
            List<Product> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select product.* from product inner join Subcategory\n"
                    + "on product.Subcategory_ID = Subcategory.Subcategory_ID";
            if (subCategoryId_str != null) {
                sql += " where Subcategory.Subcategory_ID=?";
            } else if (categoryId_str != null) {
                sql += " where Subcategory.Category_ID=?";
            }
            sql += " order by product.Product_ID\n"
                    + "offset (?-1)*? row fetch next ? row only";
            PreparedStatement ps = conn.prepareStatement(sql);
            if (subCategoryId_str != null) {
                ps.setString(1, subCategoryId_str);
            } else if (categoryId_str != null) {
                ps.setString(1, categoryId_str);
            }
            ps.setInt(2, pageIndex);
            ps.setInt(3, pageSize);
            ps.setInt(4, pageSize);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getString(1))
                        .code(rs.getString(2))
                        .name(rs.getString(3))
                        .quantity(rs.getInt(4))
                        .price(rs.getFloat(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .status(rs.getString(9))
                        .subCategoryId(rs.getString(10))
                        .build();
                list.add(product);
            }
            return list;
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int totalProductByCategory(String categoryId_str, String subCategoryId_str) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select count(*) from product inner join Subcategory\n"
                    + "on product.Subcategory_ID = Subcategory.Subcategory_ID";
            if (subCategoryId_str != null) {
                sql += " where Subcategory.Subcategory_ID=?";
            } else if (categoryId_str != null) {
                sql += " where Subcategory.Category_ID=?";
            }
            PreparedStatement ps = conn.prepareStatement(sql);
            if (subCategoryId_str != null) {
                ps.setString(1, subCategoryId_str);
            } else if (categoryId_str != null) {
                ps.setString(1, categoryId_str);
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return 0;
    }

    public void deleteProduct(String id) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "DELETE FROM [dbo].[Product]\n"
                    + "      WHERE Product_ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void insertProduct(String id, String code, String name, int quantity, float price,
            String description, String image, String subCategory, String category) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Product]\n"
                    + "           ([Product_ID]\n"
                    + "           ,[Product_Code]\n"
                    + "           ,[Product_Name]\n"
                    + "           ,[Quantity]\n"
                    + "           ,[Price]\n"
                    + "           ,[Description]\n"
                    + "           ,[Image]\n"
                    + "           ,[Status_ID]\n"
                    + "           ,[Subcategory_ID]\n"
                    + "           ,[Category_ID])\n"
                    + "     VALUES\n"
                    + "           (?, ?, ?, ?, ?, ?, ?, '1', ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, code);
            ps.setString(3, name);
            ps.setInt(4, quantity);
            ps.setFloat(5, price);
            ps.setString(6, description);
            ps.setString(7, image);
            ps.setString(8, subCategory);
            ps.setString(9, category);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public void editProduct(String id, String code, String name, int quantity, float price,
            String description, String image, String subCategory, String category) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "UPDATE [dbo].[Product]\n"
                    + "   SET [Product_Code] = ?\n"
                    + "      ,[Product_Name] = ?\n"
                    + "      ,[Quantity] = ?\n"
                    + "      ,[Price] = ?\n"
                    + "      ,[Description] = ?\n"
                    + "      ,[Image] = ?\n"
                    + "      ,[Subcategory_ID] = ?\n"
                    + "      ,[Category_ID] = ?\n"
                    + " WHERE Product_ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, code);
            ps.setString(2, name);
            ps.setInt(3, quantity);
            ps.setFloat(4, price);
            ps.setString(5, description);
            ps.setString(6, image);
            ps.setString(7, subCategory);
            ps.setString(8, category);
            ps.setString(9, id);
            ps.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

    public List<Product> searchProduct(String txtSearch) {
        try {
            List<Product> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from product where Product_Name like ? "
                    + "OR [Description] like ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+ txtSearch + "%");
            ps.setString(2, "%"+ txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = Product.builder()
                        .id(rs.getString(1))
                        .code(rs.getString(2))
                        .name(rs.getString(3))
                        .quantity(rs.getInt(4))
                        .price(rs.getFloat(5))
                        .description(rs.getString(6))
                        .imageUrl(rs.getString(7))
                        .createdDate(rs.getString(8))
                        .status(rs.getString(9))
                        .subCategoryId(rs.getString(10))
                        .CategoryId(rs.getString(11))
                        .build();
                list.add(product);
            }
            return list;
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
