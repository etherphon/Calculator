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
    // needs validation
    public final static String ERRMSG = "Missing or invalid numbers.";
    public final static String SQIN = " in" + "\u00b2";
    
    
    public final String calcRect(String w, String l) {
        try {
            if (w == null || l == null || Double.valueOf(w) <= 0 || Double.valueOf(l) <= 0 || w.isEmpty() || l.isEmpty()) {
                return ERRMSG;
            }
        } catch(IllegalArgumentException e) {
            return ERRMSG;
        }
        Double area = Double.valueOf(l) * Double.valueOf(w);
        return area.toString()  + SQIN;
    }
    
    public final String calcCirc(String r) {
        try {
            if (r == null || Double.valueOf(r) <= 0 || r.isEmpty()) {
                return ERRMSG;
            }
        } catch(IllegalArgumentException e) {
            return ERRMSG;
        }
        Double radius = Double.valueOf(r);
        Double cArea =  Math.PI * Math.pow(radius, 2);
        return String.format("%.2f", cArea)  + SQIN;
    }
    
    public final String calcTri(String b, String h) {
        try {
            if (b == null || h == null || Double.valueOf(b) < 0 || Double.valueOf(h) < 0 || b.isEmpty() || h.isEmpty()) {
                return ERRMSG;
            }
        } catch(IllegalArgumentException e) {
            return ERRMSG;
        }
        Double base = Double.valueOf(b);
        Double height = Double.valueOf(h);
        Double tArea = (base * height) / 2;
        
        return String.format("%.2f", tArea) + SQIN;
    }
    
}
