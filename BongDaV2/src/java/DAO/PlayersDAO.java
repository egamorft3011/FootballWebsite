/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Models.Players;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Egamorft
 */
public class PlayersDAO implements IMethodDAO<Players> {

    @Override
    public List<Players> getAll() {
        try {
            List<Players> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select  top(5) p.Players_Name, t.Team_Logo,t.Team_Name,p.Others, count(*) as goal from goal as g \n"
                    + "inner join Players as p  on p.Players_ID = g.Players_ID left join Team t on p.Team_ID=t.Team_ID\n"
                    + "Group by t.Team_Logo , p.Players_Name, p.Others, t.Team_Name\n"
                    + "order by goal desc";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Players players = Players.builder()
                        .Name(rs.getString(1))
                        .TeamLogo(rs.getString(2))
                        .Team(rs.getString(3))
                        .PlayerImage(rs.getString(4))
                        .Goal(rs.getInt(5))
                        .build();
                list.add(players);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    @Override
    public Players getOne(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insert(Players t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Players t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
