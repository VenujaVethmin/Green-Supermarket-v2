package Classes;

public class Category {
    private int id;
    private String category;
    private String image;

    public Category() {
        // Default constructor required for JSP EL
    }

    public Category(int id, String category, String image) {
        this.id = id;
        this.category = category;
        this.image = image;
    }

    // Getters and setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
