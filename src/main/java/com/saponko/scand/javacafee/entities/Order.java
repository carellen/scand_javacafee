package com.saponko.scand.javacafee.entities;

import java.util.List;

public class Order extends Entity {

    private int id;
    private int userId;
    private int addressId;
    private Address address; // store data from page, not map to db
    private List<SubOrder> list; // store data from page, not map to db

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public List<SubOrder> getList() {
        return list;
    }

    public void setList(List<SubOrder> list) {
        this.list = list;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
