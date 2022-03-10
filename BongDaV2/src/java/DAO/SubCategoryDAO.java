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
import Models.Category;
import Models.SubCategory;

/**
 *
 * @author Egamorft
 */
public class SubCategoryDAO implements IMethodDAO<SubCategory> {

    @Override
    public List<SubCategory> getAll() {
        try {
            List<SubCategory> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select Subcategory.*,category_name from Subcategory\n"
                    + "                     inner join Category\n"
                    + "                     on Subcategory.Category_ID = Category.Category_ID";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubCategory subCategory = SubCategory.builder()
                        .id(rs.getString(1))
                        .category(Category.builder()
                                .id(rs.getString(2))
                                .categoryName(rs.getString(5))
                                .build())
                        .subCategoryName(rs.getString(3))
                        .build();
                list.add(subCategory);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    @Override
    public SubCategory getOne(String id) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select Subcategory.*, category_name \n"
                    + "                    from Subcategory inner join Category\n"
                    + "                    on Subcategory.Category_ID = Category.Category_ID\n"
                    + "                    where Subcategory.Subcategory_ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return SubCategory.builder()
                        .id(rs.getString(1))
                        .category(Category.builder()
                                .id(rs.getString(2))
                                .categoryName(rs.getString(4))  
                                .build())
                        .subCategoryName(rs.getString(3))
                        .build();
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    @Override
    public boolean insert(SubCategory t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(SubCategory t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public List<SubCategory> getAllByCategoryId(String categoryId) {
        try {
            List<SubCategory> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select Subcategory.*, Category_name \n"
                    + "                    from Subcategory inner join Category\n"
                    + "                    on Subcategory.Category_ID = Category.Category_ID\n"
                    + "                    where Subcategory.Category_ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubCategory subCategory = SubCategory.builder()
                        .id(rs.getString(1))
                        .category(Category.builder()
                                .id(rs.getString(2))
                                .categoryName(rs.getString(4))
                                .build())
                        .subCategoryName(rs.getString(3))
                        .build();
                list.add(subCategory);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }
}
