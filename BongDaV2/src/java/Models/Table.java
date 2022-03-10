/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import lombok.Builder;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Egamorft
 */
@Setter
@Builder
@ToString
public class Table {
    private int Position;
    private String ClubLogo;
    private String Club;
    private int MatchPlayed;
    private int MatchWon;
    private int MatchDrawn;
    private int MatchLost;
    private int GoalFor;
    private int GoalAgainst;
    private int GoalDifferent;
    private int Point;

    public int getPosition() {
        return Position;
    }

    public String getClubLogo() {
        return ClubLogo;
    }

    public String getClub() {
        return Club;
    }

    public int getMatchPlayed() {
        return MatchPlayed;
    }

    public int getMatchWon() {
        return MatchWon;
    }

    public int getMatchDrawn() {
        return MatchDrawn;
    }

    public int getMatchLost() {
        return MatchLost;
    }

    public int getGoalFor() {
        return GoalFor;
    }

    public int getGoalAgainst() {
        return GoalAgainst;
    }

    public int getGoalDifferent() {
        return GoalFor - GoalAgainst;
    }

    public int getPoint() {
        return Point;
    }

    
}
