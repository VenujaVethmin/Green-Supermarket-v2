package Classes;

public class Customer {
    private String uname,Email,pass;

    public Customer(String uname, String Email, String pass) {
        super();
        this.uname = uname;
        this.Email = Email;
        this.pass = pass;
    }

    public String getuname() {
        return uname;
    }

    public void setuname(String uname) {
        this.uname = uname;
    }

    public String getEmail() {
        return uname;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }


    public String getpass() {
        return pass;
    }

    public void setpass(String pass) {
        this.pass = pass;
    }

    public Customer() {
        super();
    }

}
