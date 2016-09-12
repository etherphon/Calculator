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
public class ShapeDecider {
    
    public final GeoShape whichShape(String s) {
        if (s.equalsIgnoreCase("RECT")) {
            return GeoShape.RECTANGLE;
        } else if (s.equalsIgnoreCase("CIRC")) {
            return GeoShape.CIRCLE;
        } else if (s.equalsIgnoreCase("RECT2")) {
            return GeoShape.RECTANGLE2;
        } else {
            return GeoShape.TRIANGLE;
        }
    }
}
