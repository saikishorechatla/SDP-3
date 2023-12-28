package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="emp_table")
public class Employee
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name ="e_name",nullable = false)
    private String name;
	@Column(name ="e_id",nullable = false,unique = true)
    private String eid;
	@Column(name ="e_email",nullable = false,unique = true)
    private String email;
	@Column(name ="e_gender",nullable = false)
    private String gender;
	@Column(name ="e_type",nullable = false)
	private String type;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Column(name ="e_cnumber",nullable = false,unique = true)
    private String contactNumber;
	@Column(name ="e_password",nullable = false)
    private String password;
	@Column(name ="e_dept",nullable = false)
    private String department;
	@Column(name ="e_location",nullable = false)
    private String location;
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getEid() {
    return eid;
  }
  public void setEid(String eid) {
    this.eid = eid;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getGender() {
    return gender;
  }
  public void setGender(String gender) {
    this.gender = gender;
  }
  public String getContactNumber() {
    return contactNumber;
  }
  public void setContactNumber(String contactNumber) {
    this.contactNumber = contactNumber;
  }
  public String getPassword() {
    return password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public String getDepartment() {
    return department;
  }
  public void setDepartment(String department) {
    this.department = department;
  }
  public String getLocation() {
    return location;
  }
  public void setLocation(String location) {
    this.location = location;
  }
  @Override
public String toString() {
	return "Employee [id=" + id + ", name=" + name + ", eid=" + eid + ", email=" + email + ", gender=" + gender
			+ ", type=" + type + ", contactNumber=" + contactNumber + ", password=" + password + ", department="
			+ department + ", location=" + location + "]";
}
}