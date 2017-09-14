package com.saponko.scand.javacafee.entities;


import javax.xml.bind.annotation.XmlRootElement;
import java.util.List;
@XmlRootElement
public class MenuItem extends Entity{
    private int id;
    private String name;
    private int price;
    private char disabled;

    public MenuItem() {
    }

    public MenuItem(int id, String name, char disabled, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.disabled = disabled;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public char getDisabled() {
        return disabled;
    }

    public void setDisabled(char disabled) {
        this.disabled = disabled;
    }
}
