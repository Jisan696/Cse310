/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class TraineeChatDatabase {
    Connection con;
    
    public TraineeChatDatabase(Connection con){
        this.con = con;
    }
    //inserting data into database
    public boolean saveData(Chat chat ){
        boolean set = false;
        try{
            String query = "insert into traineemessage(name,message) values(?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1,chat.getName());
            pst.setString(2,chat.getMessage());
            
            
            pst.executeUpdate();
           
            
            set = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
    
    //fetching data from database
         public List<Chat> fetchtraineechat(){
        Chat chat = null;
        List<Chat> list = new ArrayList();
        try{
            String query = "select * from traineemessage";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                chat = new Chat();
                chat.setName(rs.getString("name"));
                chat.setMessage(rs.getString("message"));
                list.add(chat);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
         

}
