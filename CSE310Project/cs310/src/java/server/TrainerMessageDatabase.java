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
public class TrainerMessageDatabase {
    Connection con;
    
    public TrainerMessageDatabase(Connection con){
        this.con = con;
    }
    
    public boolean saveData(ChatTrainer chat ){
        boolean set = false;
        try{
            String query = "insert into trainermessage(name,message) values(?,?)";
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
         public List<ChatTrainer> fetchtrainerchat(){
        ChatTrainer chat = null;
        List<ChatTrainer> list = new ArrayList();
        try{
            String query = "select * from trainermessage";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                chat = new ChatTrainer();
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
