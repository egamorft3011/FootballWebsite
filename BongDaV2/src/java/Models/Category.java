/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Egamorft
 */
@Getter
@Setter
@Builder
@ToString
public class Category {

    private String id;
    private String categoryName;

    public List<SubCategory> getListSubCategories() {
        try {
            List<SubCategory> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select s.*, category_name \n"
                    + "from Subcategory s \n"
                    + "inner join category c \n"
                    + "on s.Category_ID=c.Category_ID\n"
                    + "where s.category_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubCategory subCategory = SubCategory.builder()
                        .id(rs.getString(1))
                        .category(Category.builder()
                                .id(rs.getString(2))
                                .categoryName(rs.getString(4))
                                .build()
                        )
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
