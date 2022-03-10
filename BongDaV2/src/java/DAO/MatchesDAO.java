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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Egamorft
 */
public class MatchesDAO implements IMethodDAO<Matches> {

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
                    + "                  	order by a.date asc";
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

    public List<Matches> getAllPaging(int pageIndex, int pageSize) {
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
                    + "                  	order by a.date asc"
                    + "	OFFSET (?-1)*? ROW FETCH NEXT ? ROW ONLY";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, pageIndex);
            ps.setInt(2, pageSize);
            ps.setInt(3, pageSize);
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
            Logger.getLogger(MatchesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int totalMatches() {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select count(*) from result";
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
    public Matches getOne(String id) {
        try {
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Result where Matches_ID=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return Matches.builder()
                        .Hlogo(rs.getString(1))
                        .HomeTeam(rs.getString(2))
                        .HomeGoal(rs.getInt(3))
                        .AwayGoal(rs.getInt(4))
                        .AwayTeam(rs.getString(5))
                        .Alogo(rs.getString(6))
                        .build();
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
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
//    public static void main(String[] args) {
//        MatchesDAO matches = new MatchesDAO();
//        List<Matches> list = matches.getAll();
//        for (Matches matches1 : list) {
//            System.out.println(matches1);
//        }
//    }
}
