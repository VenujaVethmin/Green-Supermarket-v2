package Classes;

public class Category {

    private String name;

    public Category() {
        // Default constructor required for JSP EL
    }

    public Category( String name) {

        this.name = name;
    }

    // Getters and setters



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
