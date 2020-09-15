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
public class EquipmentDatabase {
    Connection con;
    
    public EquipmentDatabase(Connection con){
        this.con = con;
    }
    
    public boolean saveData(Equipment equipment ){
        boolean set = false;
        try{
            String query = "insert into equipment(name,amount) values(?,?)";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1,equipment.getName());
            pst.setInt(2,equipment.getAmount());
            
            
            pst.executeUpdate();
           
            
            set = true;
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
         public List<Equipment> fetchEquipment(){
        Equipment equipment = null;
        List<Equipment> list = new ArrayList();
        try{
            String query = "select * from equipment";
            PreparedStatement pst = this.con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                equipment = new Equipment();
                equipment.setName(rs.getString("name"));
                equipment.setAmount(rs.getInt("amount"));
                list.add(equipment);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
}
