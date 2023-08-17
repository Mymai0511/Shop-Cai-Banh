/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Cart {

    private List<CartItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<CartItem> items) {
        this.items = items;
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {

        this.items = items;
    }

    // trả về item trong list item bằng id
    private CartItem getItemByID(int id) {
        for (CartItem item : items) {
            if (item.getProduct().getId() == id) {
                return item;
            }
        }
        return null;
    }

    // trả về số lượng của item trong giỏ hàng
    public int getQuantityByID(int id) {
        return getItemByID(id).getQuantity();
    }

    private boolean checkExist(int id) {
        for (CartItem item : items) {
            if (item.getProduct().getId() == id) {
                return true;
            }
        }
        return false;
    }

    //thêm sản phẩm vào giỏ hàng
    public void addItem(CartItem newItem) {
        // nếu id sản phẩm đã có trong list
        if (getItemByID(newItem.getProduct().getId()) != null) {
            CartItem olditem = getItemByID(newItem.getProduct().getId());
            //tăng quantity lên = old+ new
            olditem.setQuantity(olditem.getQuantity() + newItem.getQuantity());

        } else {// chưa tồn tại: thêm item vào list
            items.add(newItem);
        }
    }

    public void removeItem(int id) {
        // đã tồn tại thì xóa
        if (getItemByID(id) != null) {
            items.remove(getItemByID(id));
        }
    }

    //trả về tổng tiền của hóa đơn
    public double getTotalMoney() {
        double t = 0;
        for (CartItem i : items) {
            t += (i.getQuantity() * i.getPrice());
        }
        return t;
    }

    //trả về sản phẩm trong giỏ hàng
    private Product getProductByID(int id, List<Product> list) {
        for (Product product : list) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    // txt=item(id:quantity).item(id:quantity)....
    public Cart(String txt, List<Product> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("\\.");
                for (String i : s) {
                    String[] n = i.split(":");
                    int id = Integer.parseInt(n[0]);
                    int quantity = Integer.parseInt(n[1]);
                    Product p = getProductByID(id, list);
                    CartItem t = new CartItem(p, quantity, p.getPrice() * 2);
                    addItem(t);
                }
            }
        } catch (NumberFormatException e) {
        }

    }
}
