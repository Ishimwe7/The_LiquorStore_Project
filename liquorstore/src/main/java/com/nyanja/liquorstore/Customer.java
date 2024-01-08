package com.nyanja.liquorstore;
public class Customer {
    private String gender;
    private String f_name;
    private String s_name;
    private String phone_number;
    private String email;
    private String address;
    private String password;
    private String country;
    private String city;

   /* public Customer(String gender,String f_name,String s_name,String phone_number, String email, String password,String country, String city, String address) {
        this.gender = gender;
        this.f_name = f_name;
        this.s_name = s_name;
        this.phone_number = phone_number;
        this.email = email;
        this.password = password;
        this.country = country;
        this.city = city;
        this.address = address;
        
    } */
    
        public String getGender() {
        return gender;
    }


    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getF_name() {
        return f_name;
    }
    public String getS_name() {
        return s_name;
    }


    public void setF_ame(String f_name) {
        this.f_name = f_name;
    }
    public void setS_name(String s_name) {
        this.s_name = s_name;
    }
  public String getPhone_number() {
        return phone_number;
    }
    public void setPhone_numer(String phone_number) {
        this.phone_number = phone_number;
    }
    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPassword() {
        return password;
    }
}