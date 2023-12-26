package Classes;

public class OrderDetail {
    private String productName;
    private float subtotal;
    private float shipping;
    private float tax;
    private float total;

    public OrderDetail(String productName, String subtotal,
                       String shipping, String tax, String total) {
        this.productName = productName;



        this.total = Float.parseFloat(total);
    }

    public String getProductName() {
        return productName;
    }

    public String getSubtotal() {
        return String.format("%.2f", subtotal);
    }

    public String getShipping() {
        return String.format("%.2f", shipping);
    }



    public String getTotal() {
        return String.format("%.2f", total);
    }
}
