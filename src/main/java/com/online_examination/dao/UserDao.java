
package com.online_examination.dao;
import com.online_examination.entities.User;
import java.sql.*;
public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    public boolean saveUser(User user){
        boolean f = false;
        try{
           String query = "insert into user(Name,EmailId,Password,City,Address,GENDER,ProfileType) values (?,?,?,?,?,?,?)";
           PreparedStatement pstmt = this.con.prepareStatement(query);
           pstmt.setString(1,user.getName());
           pstmt.setString(2,user.getEmail());
           pstmt.setString(3,user.getPassword());
           pstmt.setString(4,user.getCity());
           pstmt.setString(5,user.getAddress());
           pstmt.setString(6,user.getGender());
           pstmt.setString(7,user.getProfileType());
           pstmt.executeUpdate();
             f = true;
           
        }
        catch(Exception e){
           e.printStackTrace(); 
        }
        return f;
    }
    
    //get user by email and password

    public User getUserByEmailAndPassword(String email, String password){
        User user = null;
        try {
            String query = "select * from user where EmailID=? and Password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set = pstmt.executeQuery();
            while(set.next()){
                user = new User();
                user.setId(set.getInt("UserID"));
                user.setName(set.getString("Name"));
                user.setEmail(set.getString("EmailId"));
                user.setPassword(set.getString("Password"));
                user.setCity(set.getString("City"));
                user.setAddress(set.getString("Address"));
                user.setGender(set.getString("GENDER"));
                user.setProfileType(set.getString("ProfileType"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
