/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Models.Matches;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Egamorft
 */
public class ScheduleDAO implements IMethodDAO<Matches>{

    @Override
    public List<Matches> getAll() {
        try {
            List<Matches> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select  b.Team_Logo,\n"
                    + "                      b.Team_Name, \n"
                    + "                      a.home_goal , \n"
                    + "                       a.away_goal  , \n"
                    + "                      c.Team_Name  ,\n"
                    + "                      c.Team_Logo\n"
                    + "                     from \n"
                    + "                  	[Result] a\n"
                    + "                   	Join Team b on a.home_id = b.Team_ID\n"
                    + "                   	join Team c on a.away_id = c.Team_ID\n"
                    + "                  	order by a.date desc";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Matches matches = Matches.builder()
                        .Hlogo(rs.getString(1))
                        .HomeTeam(rs.getString(2))
                        .HomeGoal(rs.getInt(3))
                        .AwayGoal(rs.getInt(4))
                        .AwayTeam(rs.getString(5))
                        .Alogo(rs.getString(6))
                        .build();
                list.add(matches);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    @Override
    public Matches getOne(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insert(Matches t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Matches t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
