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
public class Account {

    private String username;
    private String password;
    private String fullname;
    private String address;
    private String email;
    private String phone;
    private String roleId;
    private int status;
    private String createdDate;
}
