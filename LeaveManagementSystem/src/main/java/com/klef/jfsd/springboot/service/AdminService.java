package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;

public interface AdminService {

	
	public Admin login(String id,String password );
	public String addemployee(Employee employee);
	public void sendSimpleEmail(String toEmail,String subject,String body);
	public List<Employee> totalEmployees();
	public String deleteemployee(int id);
	
}
