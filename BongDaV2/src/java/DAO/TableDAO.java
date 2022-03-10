/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import Models.Table;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Egamorft
 */
public class TableDAO implements IMethodDAO<Table> {

    @Override
    public List<Table> getAll() {
        try {
            List<Table> list = new ArrayList<>();
            //mo ket noi
            Connection conn = new DBContext().getConnection();
            String sql = "select a.Team_Name ,a.Team_Logo		, d.*\n"
                    + "\n"
                    + "from Team a left join \n"
                    + "	\n"
                    + "( select b.team as 'Club', \n"
                    + "		row_number   () over ( order by sum(b.point )desc, sum(b.goal) desc ) as 'Pos', -- thứ tự \n"
                    + "		count( b.team )  as 'MP' , --tổng số trận\n"
                    + "\n"
                    + "		sum( case \n"
                    + "				when loai = 'w' then 1 \n"
                    + "				else 0 \n"
                    + "			end )  as 'W'   ,\n"
                    + "		sum( case \n"
                    + "				when loai = 'd' then 1 \n"
                    + "				else 0 \n"
                    + "			end )  as 'D'   , \n"
                    + "		sum( case \n"
                    + "				when loai = 'l' then 1 \n"
                    + "				else 0 \n"
                    + "			end ) as 'L'  , \n"
                    + "\n"
                    + "\n"
                    + "		sum(b.goal) as 'GF'     , \n"
                    + "		sum( b.goal_lose )  as 'GA',\n"
                    + "--		(b.goal - b.goal_lose) as 'GD',\n"
                    + "				sum(b.point ) as 'Pts'  -- tổng điểm\n"
                    + "from \n"
                    + "(\n"
                    + "select \n"
                    + "	a.Matches_ID ,\n"
                    + "	--a.date , \n"
                    + "	a.home_id  as team , \n"
                    + "	a.home_goal as goal , \n"
                    + "	a.away_goal as goal_lose , \n"
                    + "	a.result   , \n"
                    + "	case \n"
                    + "		when result  = 'H' then 3\n"
                    + "		when result  = 'A' then 0\n"
                    + "		else 1\n"
                    + "	end as point  ,\n"
                    + "	case \n"
                    + "		when result  = 'H' then 'W'\n"
                    + "		when result  = 'A' then 'L'\n"
                    + "		else 'D'\n"
                    + "	end as 'loai'\n"
                    + "		\n"
                    + "from \n"
                    + "(\n"
                    + "select *  ,\n"
                    + "\n"
                    + "		case \n"
                    + "			when  home_goal  > away_goal  then 'H'\n"
                    + "			when  home_goal  <  away_goal  then 'A'\n"
                    + "			else 'D'\n"
                    + "		end	as result \n"
                    + "from [Result] \n"
                    + ") a\n"
                    + "union \n"
                    + "select \n"
                    + "	a.Matches_ID ,\n"
                    + "	--a.date , \n"
                    + "	a.away_id   as team , \n"
                    + "	a.away_goal  as goal ,\n"
                    + "	a.home_goal as goal_lose , \n"
                    + "	a.result   , \n"
                    + "	case \n"
                    + "		when result  = 'H' then 0\n"
                    + "		when result  = 'A' then 3\n"
                    + "		else 1\n"
                    + "	end as point , \n"
                    + "	case \n"
                    + "		when result  = 'H' then 'L'\n"
                    + "		when result  = 'A' then 'W'\n"
                    + "		else 'D'\n"
                    + "	end as 'loai'\n"
                    + "from \n"
                    + "(\n"
                    + "select *  ,\n"
                    + "\n"
                    + "		case \n"
                    + "			when  home_goal  > away_goal  then 'H'\n"
                    + "			when  home_goal  <  away_goal  then 'A'\n"
                    + "			else 'D'\n"
                    + "		end	as result \n"
                    + "from [Result] \n"
                    + ") a\n"
                    + ") b\n"
                    + "group by \n"
                    + "	b.team\n"
                    + " ) d \n"
                    + "on d.Club = a.Team_ID \n"
                    + "order by \n"
                    + "	d.Pos asc , \n"
                    + "	a.Team_Name";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Table table = Table.builder()
                        .Position(rs.getInt(4))
                        .ClubLogo(rs.getString(2))
                        .Club(rs.getString(1))
                        .MatchPlayed(rs.getInt(5))
                        .MatchWon(rs.getInt(6))
                        .MatchDrawn(rs.getInt(7))
                        .MatchLost(rs.getInt(8))
                        .GoalFor(rs.getInt(9))
                        .GoalAgainst(rs.getInt(10))
                        .Point(rs.getInt(11))
                        .build();
                list.add(table);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

    @Override
    public Table getOne(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean insert(Table t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Table t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(String id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
