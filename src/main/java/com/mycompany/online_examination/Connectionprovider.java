
package com.mycompany.online_examination;
import java.sql.*;
public class Connectionprovider {
    public static Connection con;
    public static Connection getConnection(){
        try{
            if(con==null){
            //driver class load
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/OnlineExamination";
            String username = "root";
            String password = "Jayshree@23";
            // create a connection
            con=DriverManager.
                    getConnection(url,username,password);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
}
