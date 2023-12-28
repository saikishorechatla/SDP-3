package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
    AdminRepository adminRepository ;
	
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	
	@Autowired
	JavaMailSender mailSender;
	
	
	@Override
	public Admin login(String id, String password) {
		
	
				return adminRepository.login(id, password);
	}
	@Override
	public String addemployee(Employee employee) {
		
		try {
			Employee emp= employeeRepository.save(employee);
			String body="Hello! "+emp.getName()+",\r\n"
					
			+ "\r\n"
			+ "We are delighted to welcome you to Company. Your journey with us has just begun, and we are excited to have you as part of our team."
			+"Your Role is: "+emp.getType()+ "  employee id :"+emp.getEid() +" ,password : "+emp.getPassword() +"  please update the password after login in your profile " ;
			if(emp!=null) {
				sendSimpleEmail(emp.getEmail(),"Welcome To the Company", body);
			}
			return "success";
		}catch (Exception e) {
			
			return ("failed root cause:"+e.getMessage());
		}
		
	}
	
	
	public void sendSimpleEmail(String toEmail,
            String subject,
            String body
) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("csaikishore145@gmail.com");
		message.setTo(toEmail);
		message.setText(body);
		message.setSubject(subject);
		mailSender.send(message);
		System.out.println("Mail Sent Successfully");


}
	@Override
	public List<Employee> totalEmployees() {
		List<Employee> li= employeeRepository.findAll();
		return li;
	}
	@Override
	public String deleteemployee(int id) {
		Optional<Employee> obj =  employeeRepository.findById(id);
        
        String msg = null;
        
        if(obj.isPresent())
        {
          Employee emp = obj.get();
          
          employeeRepository.delete(emp);
          
          msg = "Employee Deleted Successfully";
        }
        else
        {
          msg = "Employee Not Found";
        }
        
        return msg;
	}

}