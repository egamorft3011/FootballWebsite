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
public class Product {

    private String id;
    private String code;
    private String name;
    private int quantity;
    private float price;
    private String description;
    private String imageUrl;
    private String createdDate;
    private String status;
    private String subCategoryId;
    private String CategoryId;

    public List<Image> getListImages() {
        try {
            List<Image> list = new ArrayList<>();
            list.add(Image.builder().imageUrl(imageUrl).build());
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [image] where product_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, this.id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Image image = Image.builder()
                        .id(rs.getString(1))
                        .productId(rs.getString(2))
                        .imageUrl(rs.getString(3))
                        .build();
                list.add(image);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

}
