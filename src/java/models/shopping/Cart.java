/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models.shopping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ubro3
 */
public class Cart {
    private Map<String, Clothes> cart;

    public Cart() {
    }

    public Cart(Map<String, Clothes> cart) {
        this.cart = cart;
    }

    public Map<String, Clothes> getCart() {
        return cart;
    }

    public void setCart(Map<String, Clothes> cart) {
        this.cart = cart;
    }
    
    public void add(Clothes clothes) {
        if (this.cart == null) {
            this.cart = new HashMap<String, Clothes>();
        }
        if (this.cart.containsKey(clothes.getId())) {
            int currentQuantity = this.cart.get(clothes.getId()).getQuantity();
            clothes.setQuantity(currentQuantity + clothes.getQuantity());
        }
        cart.put(clothes.getId(), clothes);
    }
    
    public boolean remove(String id) {
        boolean result = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                this.cart.remove(id);
                result = true;
            }
        }
        return result;
    }
    public boolean edit(String id, Clothes newClothes) {
        boolean result = false;
        if (this.cart != null) {
            if (this.cart.containsKey(id)) {
                this.cart.replace(id, newClothes);
                result = true;
            }
        }
        return result;
    }
}
