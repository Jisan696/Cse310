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
public class Intense {
    int sets;
    int reps;
    String type;

    public Intense() {
    }

    public Intense(int reps, int sets, String type) {
        this.sets = sets;
        this.reps = reps;
        this.type = type;
    }

    public void setSets(int sets) {
        this.sets = sets;
    }

    public void setReps(int reps) {
        this.reps = reps;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getSets() {
        return sets;
    }

    public int getReps() {
        return reps;
    }

    public String getType() {
        return type;
    }
}
