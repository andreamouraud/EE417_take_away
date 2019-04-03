package org.dcu.models;

/**
 * Menu Model
 */
public class Menu {
  private Integer id;
  private String name;
  private String description;
  private Integer restaurant;
  private double price;

  public Menu() {}
  public Menu(String name, String description, double price, Integer restaurant) {
    this.name = name;
    this.description = description;
    this.price = price;
    this.restaurant = restaurant;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public Integer getRestaurant() {
    return restaurant;
  }

  public void setRestaurant(Integer restaurant) {
    this.restaurant = restaurant;
  }
}
