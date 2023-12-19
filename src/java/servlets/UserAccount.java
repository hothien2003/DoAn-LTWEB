/*
 
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package servlets;

/**
 *
 
@author MOI*/
public class UserAccount {

    private String username;
    private String phone;
    private String password;

    public UserAccount() {
    }

    public UserAccount(String username, String phone, String password) {
        this.username = username;
        this.phone = phone;
        this.password = password;
    }

    public UserAccount(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public UserAccount(UserAccount us) {
        this.username = us.username;
        this.phone = us.phone;
        this.password = us.password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}