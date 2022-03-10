/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

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
public class Matches {
    private String id;
    private String Hlogo;
    private String HomeTeam;
    private int HomeGoal;
    private int AwayGoal;
    private String AwayTeam;
    private String Alogo;
    
}
