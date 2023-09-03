
package com.online_examination.entities;
import java.sql.*;
public class User {
    private int id;
    private String name;
    private String email;
    private String password;
    private String city;
    private String address;
    private String gender;
    private String profileType;
    
    public User(int id,String name,String email,String password,String city,String address,String gender,String profileType){
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.city = city;
        this.address = address;
        this.gender = gender;
        this.profileType = profileType;
    }
    public User(){
        
    }
    public User(String name,String email,String password,String city,String address,String gender,String profileType){
        this.name = name;
        this.email = email;
        this.password = password;
        this.city = city;
        this.address = address;
        this.gender = gender;
        this.profileType = profileType;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getProfileType() {
        return profileType;
    }

    public void setProfileType(String profileType) {
        this.profileType = profileType;
    }
    
}
