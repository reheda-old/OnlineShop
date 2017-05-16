package ua.pp.hak.onlineshop.model;


import ua.pp.hak.onlineshop.entity.Customer;

public class CustomerInfo {

    private String name;
    private String address;
    private String email;
    private String phone;

    private boolean valid;

    public CustomerInfo() {
    }

    public CustomerInfo(String name, String address, String email, String phone) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.phone = phone;
    }

    public CustomerInfo(Customer customer) {
        if (customer != null) {
            this.name = customer.getName();
            this.address = customer.getAddress();
            this.email = customer.getEmail();
            this.phone = customer.getPhone();
        }
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

}