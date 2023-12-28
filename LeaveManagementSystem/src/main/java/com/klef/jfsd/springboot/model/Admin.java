package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="admin_table")
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 private int id;
	@Column(name="u_id" ,nullable = false)
	 private String userId;
	 @Column(name="u_password", nullable = false)
	 private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", userId=" + userId + ", password=" + password + "]";
	}
}
