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
public class MediumDatabase {
    Connection con;
    
    public MediumDatabase(Connection con){
        this.con = con;
    }
    
    public boolean saveData(Medium medium ){
        boolean set = false;
        try{
            String query = "insert into medium(reps,sets,type) values(?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1,medium.getReps());
            pst.setInt(2,medium.getSets());
            pst.setString(3,medium.getType());
            
            pst.executeUpdate();
           
            
            set = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
     public List<Medium> fetchMedium(){
        Medium medium = null;
        List<Medium> list = new ArrayList();
        try{
            String query = "select * from medium";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                medium = new Medium();
                medium.setReps(rs.getInt("reps"));
                medium.setSets(rs.getInt("sets"));
                medium.setType(rs.getString("type"));
                list.add(medium);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
}
