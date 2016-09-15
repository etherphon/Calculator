/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.jah.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jhedding
 */
public class ListService {
    private String userName = "etherphon";
    private List<String> shoppingList;
    
    public ListService() {
        shoppingList = new ArrayList<>();
        shoppingList.add("Ramen Noodles");
        shoppingList.add("Sriracha");
        shoppingList.add("Green Onions");
        shoppingList.add("Eggs");
    }
    
    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public List<String> getShoppingList() {
        return shoppingList;
    }
    
}
