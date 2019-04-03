package org.dcu.models;

import java.util.ArrayList;
import java.util.List;

/**
 * User model
 */
public class User {
  private Integer id;
  private String firstName;
  private String lastName;
  private String email;
  private String password;
  private Integer gender;
  private List<Restaurant> restaurantList;
  private String salt;

  public User(String firstName, String lastName, String email, String password, Integer gender, String salt) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.password = password;
    this.gender = gender;
    this.restaurantList = new ArrayList<>();
    this.salt = salt;
  }

  public User() {}
  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }


  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  /**
   * Add a restaurant to the list of the user
   * @param restaurant the org.dcu.models.Restaurant to add to the list
   */
  public void addRestaurant(Restaurant restaurant) {
    restaurantList.add(restaurant);
  }

  /**
   * Get the restaurant list of the user
   * @return the org.dcu.models.Restaurant list of the user
   */
  public List<Restaurant> getRestaurantList() {
    return restaurantList;
  }

  public Integer getGender() {
    return gender;
  }

  public void setGender(Integer gender) {
    this.gender = gender;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getSalt() {
    return salt;
  }

  public void setSalt(String salt) {
    this.salt = salt;
  }
}
