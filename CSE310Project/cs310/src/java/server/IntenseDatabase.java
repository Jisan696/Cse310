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
public class IntenseDatabase {
    Connection con;
    
    public IntenseDatabase(Connection con){
        this.con = con;
    }
    
    public boolean saveData(Intense intense ){
        boolean set = false;
        try{
            String query = "insert into intense(reps,sets,type) values(?,?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setInt(1,intense.getReps());
            pst.setInt(2,intense.getSets());
            pst.setString(3,intense.getType());
            
            pst.executeUpdate();
           
            
            set = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
     public List<Intense> fetchIntense(){
        Intense intense = null;
        List<Intense> list = new ArrayList();
        try{
            String query = "select * from intense";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                intense = new Intense();
                intense.setReps(rs.getInt("reps"));
                intense.setSets(rs.getInt("sets"));
                intense.setType(rs.getString("type"));
                list.add(intense);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
}
