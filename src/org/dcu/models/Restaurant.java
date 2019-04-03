package org.dcu.models;

import java.util.List;

/**
 * Restaurant model
 */
public class Restaurant {
  private Integer id;
  private String name;
  private Integer owner;
  private String location;
  private String description;
  private String phoneNumber;
  private List<Menu> menu;

  public Restaurant(String name, String location, Integer owner, String description, String phoneNumber) {
    this.name = name;
    this.location = location;
    this.owner = owner;
    this.description = description;
    this.phoneNumber = phoneNumber;
  }

  public Restaurant() {}

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Integer getOwner() {
    return owner;
  }

  public void setOwner(Integer owner) {
    this.owner = owner;
  }

  public List<Menu> getMenu() {
    return menu;
  }

  public void addMenu(Menu menu) {
    this.menu.add(menu);
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public void setMenu(List<Menu> menu) {
    this.menu = menu;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }
}
