package com.klef.jfsd.springboot.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveApplication;

public interface EmployeeService {

	public Employee checkemplogin(int id,String password);
	public String applyleave(MultipartFile file, com.klef.jfsd.springboot.util.LeaveObject leave);
	public List<Object[]> leavehistory(String id);
	public Employee findEmployeeById(String id);
	public int countorequest(String eid);
	public List<Object[]> leaverequests();
	public String ProfilePic(String eid,MultipartFile file);
	public String  profileRetrive(String eid) throws IOException;
}
