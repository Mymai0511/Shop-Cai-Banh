package Model;


/**
 *
 * @author Admin
 */
public class Product {

    private int id;
    private String name;
    private double price;
    private String stock;
    private Category category;
    private String img;
    private String detail;
    private String time;

    public Product() {
    }

    public Product(int id, String name, double price, Category category, String img, String detail, String time) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.category = category;
        this.img = img;
        this.detail = detail;
        this.time = time;
    }

    public Product(int id, String name, double price, String stock, Category category, String img, String detail, String time) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.category = category;
        this.img = img;
        this.detail = detail;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", price=" + price + ", stock=" + stock + ", category=" + category + ", img=" + img + ", detail=" + detail + ", time=" + time + '}';
    }
    
}