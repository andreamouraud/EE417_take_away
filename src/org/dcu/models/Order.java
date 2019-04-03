package org.dcu.models;

import java.sql.Timestamp;

/**
 * Order model
 */
public class Order {
  private Integer id;
  private Integer restaurant;
  private Integer menu;
  private String customer;
  private Timestamp time;

  public Order(Integer restaurant, Integer menu, String customer) {
    this.restaurant = restaurant;
    this.menu = menu;
    this.customer = customer;
  }

  public Order() {

  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Integer getRestaurant() {
    return restaurant;
  }

  public void setRestaurant(Integer restaurant) {
    this.restaurant = restaurant;
  }

  public Integer getMenu() {
    return menu;
  }

  public void setMenu(Integer menu) {
    this.menu = menu;
  }

  public String getCustomer() {
    return customer;
  }

  public void setCustomer(String customer) {
    this.customer = customer;
  }

  public Timestamp getTime() {
    return time;
  }

  public void setTime(Timestamp time) {
    this.time = time;
  }
}
