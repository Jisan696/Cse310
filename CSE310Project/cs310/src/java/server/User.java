/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

/**
 *
 * @author Asus
 */
public class User {
    int id;
    String name;
    String email;
    String password;
    int phone;
    int age;
    String sex;
    int weight;
    int height;
    String current_address;
    String prev_exp;
    String maj_inj;
    String habi_smoke;
    String user_type;
            

    public User() {
    }

    public User(int id, String name, String password,String email, int phone, int age, String sex, int weight, int height, String current_address, String prev_exp, String maj_inj, String habi_smoke) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.age = age;
        this.sex = sex;
        this.weight = weight;
        this.height = height;
        this.current_address = current_address;
        this.prev_exp = prev_exp;
        this.maj_inj = maj_inj;
        this.habi_smoke = habi_smoke;
        
    }
    
        public User( String name, String password,String email, int phone, int age, String sex, int weight, int height, String current_address, String prev_exp, String maj_inj, String habi_smoke,String user_type) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.age = age;
        this.sex = sex;
        this.weight = weight;
        this.height = height;
        this.current_address = current_address;
        this.prev_exp = prev_exp;
        this.maj_inj = maj_inj;
        this.habi_smoke = habi_smoke;
        this.user_type = user_type;
        
    }
    public User(String name, String email, String password) {
        this.name = name;
        this.email = email;
        this.password = password;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }

    

    public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }

    

    public void setEmail(String email) {
        this.email = email;
    }
    public String getEmail() {
        return email;
    }

    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getPassword() {
        return password;
    }

   

    public void setPhone(int phone) {
        this.phone = phone;
    }
     public int getPhone() {
        return phone;
    }
  

    public void setAge(int age) {
        this.age = age;
    }
    
      public int getAge() {
        return age;
    }
   

    public void setSex(String sex) {
        this.sex = sex;
    }
     public String getSex() {
        return sex;
    }
   

    public void setWeight(int weight) {
        this.weight = weight;
    }
     public int getWeight() {
        return weight;
    }
    

    public void setHeight(int height) {
        this.height = height;
    }
     public int getHeight() {
        return height;
    }
    

    public void setCurrent_address(String current_address) {
        this.current_address = current_address;
    }
    public String getCurrent_address() {
        return current_address;
    }
  

    public void setPrev_exp(String prev_exp) {
        this.prev_exp = prev_exp;
    }
      public String getPrev_exp() {
        return prev_exp;
    }
     

    public void setMaj_inj(String maj_inj) {
        this.maj_inj = maj_inj;
    }
    public String getMaj_inj() {
        return maj_inj;
    }
    

    public void setHabi_smoke(String habi_smoke) {
        this.habi_smoke = habi_smoke;
    }
    public String getHabi_smoke() {
        return habi_smoke;
    }
    public void setUserType(String user_type) {
        this.user_type = user_type;
    }
    public String getUserType() {
        return user_type;
    }
}
