package Entity;


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
    private String cid;
    private String img;
    private String title;
    private String description;

    public Product() {
    }

    public Product(int id, String name, double price, String stock, String img, String title, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.img = img;
        this.title = title;
        this.description = description;
    }

    public Product(int id, String name, double price, String stock, String cid, String img, String title, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.cid = cid;
        this.img = img;
        this.title = title;
        this.description = description;
    }
    
    


    public Product(int id, String name, double price, String stock, Category category, String img, String title, String description) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.category = category;
        this.img = img;
        this.title = title;
        this.description = description;
    }

    public Product(String name, double price, String stock, String cid, String img, String title, String description) {
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.cid = cid;
        this.img = img;
        this.title = title;
        this.description = description;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", price=" + price + ", stock=" + stock + ", category=" + category + ", cid=" + cid + ", img=" + img + ", title=" + title + ", description=" + description + '}';
    }


    
}