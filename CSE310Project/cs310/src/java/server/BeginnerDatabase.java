/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class BeginnerDatabase {
    Connection con;
    
    public BeginnerDatabase(Connection con){
        this.con = con;
    }
    //inserting into database. 
    public boolean saveData(Beginner beginner ){
        boolean set = false;
        try{
            String query = "insert into beginner(reps,sets,type) value(?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1,beginner.getReps());
            pst.setInt(2,beginner.getSets());
            pst.setString(3,beginner.getType());
            
            pst.executeUpdate();
           
            
            set = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return set;
    }
    //Fetching data from database
    public List<Beginner> fetchBeginner(){
        Beginner beginner = null;
        List<Beginner> list = new ArrayList();
        try{
            String query = "select * from beginner";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                beginner = new Beginner();
                beginner.setReps(rs.getInt("reps"));
                beginner.setSets(rs.getInt("sets"));
                beginner.setType(rs.getString("type"));
                list.add(beginner);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
}

