/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.jah.model;

/**
 *
 * @author jhedding
 */
public class AreaCalculator {
    
    public final String calcRect(String w, String l) {
        Double area = Double.valueOf(l) * Double.valueOf(w);
        return area.toString()  + " in" + "\u00b2";
    }
    
    public final String calcCirc(String r) {
        Double radius = Double.valueOf(r);
        Double cArea =  Math.PI * Math.pow(radius, 2);
        return String.format("%.2f", cArea)  + " in" + "\u00b2";
    }
    
    public final String calcTri(String b, String h) {
        Double base = Double.valueOf(b);
        Double height = Double.valueOf(h);
        Double tArea = (base * height) / 2;
        
        return String.format("%.2f", tArea) + " in" + "\u00b2";
    }
    
}
