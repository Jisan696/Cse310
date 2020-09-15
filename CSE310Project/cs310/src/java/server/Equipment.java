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
public class Equipment {
    String name;
    int amount;

    public void setName(String name) {
        this.name = name;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getName() {
        return name;
    }

    public int getAmount() {
        return amount;
    }

    public Equipment(String name, int amount) {
        this.name = name;
        this.amount = amount;
    }

    public Equipment() {
    }
}
