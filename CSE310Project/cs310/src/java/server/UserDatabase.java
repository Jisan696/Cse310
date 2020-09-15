/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Asus
 */
public class UserDatabase {
     Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }
    
    //for register user 
    public boolean signup(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into user(name,password,email,phone,age,sex,weight,height,current_address,prev_exp,maj_inj,habi_smoke,user_type) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
           
           PreparedStatement pst = this.con.prepareStatement(query);
           pst.setString(1, user.getName());
           pst.setString(2, user.getPassword());
           pst.setString(3, user.getEmail());
           pst.setInt(4, user.getPhone());
           pst.setInt(5, user.getAge());
           pst.setString(6, user.getSex());
           pst.setInt(7, user.getWeight());
           pst.setInt(8, user.getHeight());
           pst.setString(9, user.getCurrent_address());
           pst.setString(10, user.getPrev_exp());
           pst.setString(11, user.getMaj_inj());
           pst.setString(12, user.getHabi_smoke());
           pst.setString(13, user.getUserType());
           pst.executeUpdate();
           set = true;
           
           
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    //user login
    public User login(String email, String pass){
        User usr=null;
        try{
            String query ="select * from user where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.next()){
                usr = new User();
                usr.setName(rs.getString("name"));
                usr.setPassword(rs.getString("password"));
                usr.setEmail(rs.getString("email"));
                usr.setPhone(rs.getInt("phone"));
                usr.setAge(rs.getInt("age"));
                usr.setSex(rs.getString("sex"));
                usr.setWeight(rs.getInt("weight"));
                usr.setHeight(rs.getInt("height"));
                usr.setCurrent_address(rs.getString("current_address"));
                usr.setPrev_exp(rs.getString("prev_exp"));
                usr.setMaj_inj(rs.getString("maj_inj"));
                usr.setHabi_smoke(rs.getString("habi_smoke"));
                usr.setUserType(rs.getString("user_type"));
                
                
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return usr;
    }
}
