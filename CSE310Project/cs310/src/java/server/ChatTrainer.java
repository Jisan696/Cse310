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
public class ChatTrainer {
    String name;
    String message;

    public void setName(String name) {
        this.name = name;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getName() {
        return name;
    }

    public String getMessage() {
        return message;
    }

    public ChatTrainer() {
    }

    public ChatTrainer(String name, String message) {
        this.name = name;
        this.message = message;
    }
    
}
