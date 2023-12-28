package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.util.List;

import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;
import com.klef.jfsd.springboot.util.Context;
import com.klef.jfsd.springboot.util.LeaveObject;
import com.klef.jfsd.springboot.model.LeaveApplication;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
  
	@Autowired
      AdminService adminService;
	
	@Autowired
	EmployeeService employeeService;
	
	
	
	@Autowired
    private JavaMailSender javaMailSender;
	
	
	Context context = new Context();
	
	
  @GetMapping("/")
  public ModelAndView index(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  Employee emp = (Employee) session.getAttribute("employee");
	  if(emp!=null) {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("employee/userhome");
	  }
    ModelAndView mv = new ModelAndView();
    mv.setViewName("login");
//    mv.addObject("message", "Invalid Credentials");
    return mv;
  }
  
  @GetMapping("admin")
  public ModelAndView admindashboard(HttpServletRequest request) {
	  
	  HttpSession session = request.getSession();
	  
	  if(session!=null) {
		  
		  ModelAndView mv = new ModelAndView("admin/admin");
		  List<Employee> li = adminService.totalEmployees();
		  int count = li.size();
		  mv.addObject("totalemps", count);
		  int authCount = 0;
		  for(Employee emp : li) {
			  if(emp.getType().compareTo("EMPLOYEE")!=0)
				  authCount++;
		  }
		  mv.addObject("authcount", authCount);
		  
		  return mv;
	  }else {
		  ModelAndView mv = new ModelAndView("login");
		  return mv;
	  }
  }
  

  
  @GetMapping("addemployee")
  public ModelAndView addemployee() {
    ModelAndView mv = new ModelAndView("admin/addemployee");
    return mv;
  }
  
  
  @PostMapping("addemp")
//  @EventListener(ApplicationReadyEvent.class)
  public ModelAndView insertemp(HttpServletRequest request) {
	  
	  ModelAndView mv = new ModelAndView();
	  
	  String name = request.getParameter("name");
	  String eid = request.getParameter("id");
	  String email = request.getParameter("email");
	  String gender = request.getParameter("gender");
	  String contactno = request.getParameter("contact_number");
	  String password = request.getParameter("password");
	  String emptype = request.getParameter("emptype");
	  String department  = request.getParameter("department");
	  String location  = request.getParameter("location");
	  
	  
	  Employee emp = new Employee();
	  emp.setName(name);
	  emp.setEid(eid);
	  emp.setEmail(email);
	  emp.setGender(gender);
	  emp.setContactNumber(contactno);
	  emp.setPassword(password);
	  emp.setType(emptype);
	  emp.setDepartment(department);
	  emp.setLocation(location);
	  
	  
	  String msg = adminService.addemployee(emp);
	  
	  
	  mv.setViewName("admin/addemployee");
	  mv.addObject("message", msg);
	  
	  return mv;
	  
	  
  }
  
  @GetMapping("deleteemployee")
  public ModelAndView deleteemployee() {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("admin/deleteemployee");
	  List<Employee> li = adminService.totalEmployees();
	  mv.addObject("employee", li);
	  return mv;
  }
  
  @GetMapping("deleteemployeebyid/{id}")
  public ModelAndView deleteemployeebyid(@PathVariable("id") int id) {
	  String msg = adminService.deleteemployee(id);
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("admin/deleteemployee");
	  mv.addObject("message", msg);
	  List<Employee> li = adminService.totalEmployees();
	  mv.addObject("employee", li);
	  return mv;
//      return "redirect:/deleteemployee";
  }

  

  
  @PostMapping("valid")
  public ModelAndView valid(HttpServletRequest request) {
	  ModelAndView mv = new ModelAndView();
	  String uid = request.getParameter("email");
	  String password = request.getParameter("password");
	  
	  try {
		  int id= Integer.parseInt(uid);
		  System.out.println(id);
		  try {
			  Employee emp = employeeService.checkemplogin(id, password);
			  
			  if(emp.getType().compareTo("EMPLOYEE")==0) {
				  
				  System.out.println(emp.toString());
				  mv.setViewName("employee/userhome");
				  HttpSession session = request.getSession();
				  
				  session.setAttribute("employee", emp);
				  context.setEId(emp.getEid());
				  context.setName(emp.getName());
				  mv.addObject("eid", emp.getEid());
				  mv.addObject("name", emp.getName());
				  mv.addObject("dept", emp.getDepartment());
				  int noofrequests = employeeService.countorequest(emp.getEid());
				  mv.addObject("requests", noofrequests);
				  return mv;
			  }else {
				  mv.setViewName("authority/authorityhome");
				  HttpSession session = request.getSession();
				  
				  session.setAttribute("employee", emp);
				  context.setEId(emp.getEid());
				  context.setName(emp.getName());
				  mv.addObject("eid", emp.getEid());
				  mv.addObject("name", emp.getName());
				  return mv;
			  }
		  }
		  catch(Exception ee) {
			  mv.setViewName("login");
			  mv.addObject("message", "Invalid Credentials");
			  
		  }
		  
	  }
	  catch (NumberFormatException e) {
		  
		  try {
			  Admin a = adminService.login(uid, password);
			  mv.setViewName("admin/admin");
			  List<Employee> li = adminService.totalEmployees();
			  int count = li.size();
			  mv.addObject("totalemps", count);
			  int authCount = 0;
			  for(Employee emp : li) {
				  if(emp.getType().compareTo("EMPLOYEE")!=0)
					  authCount++;
			  }
			  mv.addObject("authcount", authCount);
			  
			  HttpSession session = request.getSession();
			  
			  session.setAttribute("uid", a.getUserId());
		  }catch (Exception ee) {
			  mv.setViewName("login");
			  mv.addObject("msg", "Login Failed");
		}
	}
		 
	 return mv;
  }
  
  
  @GetMapping("home")
  public ModelAndView userhome(HttpServletRequest request) {
	  try {  
		  HttpSession session = request.getSession();
		  Employee emp = (Employee)session.getAttribute("employee");
		  if(emp!=null) {
			  
			  ModelAndView mv = new ModelAndView("employee/userhome");
			  mv.addObject("eid", emp.getEid());
			  mv.addObject("name", emp.getName());
			  mv.addObject("dept", emp.getDepartment());
			  int noofrequests = employeeService.countorequest(emp.getEid());
			  mv.addObject("requests", noofrequests);
			  return mv;
		  }
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("login");
		  return mv;
	  }
	  catch (Exception e) {
		  ModelAndView mv = new ModelAndView("login");
		  return mv;
	}
  }
  @GetMapping("leaveapplication")
  public ModelAndView leaveform( HttpServletRequest request     )
  {
	  try {
		  HttpSession session = request.getSession();
		  Employee emp = (Employee)session.getAttribute("employee");
		  ModelAndView mv = new ModelAndView("employee/leaverequest");
		  return mv;
	  }catch (Exception e) {
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("login");
		  return mv;
	  }
  }
  
  
  @PostMapping("applyleave")
  public ModelAndView leaveFormSubmit(HttpServletRequest request,
      @RequestParam("leaveType") String leavetype,
      @RequestParam("fromDate") String fromdate,
      @RequestParam("toDate") String todate,
      @RequestParam("reason") String reason,
      @RequestParam("duration") String duration,
      @RequestPart("letter") MultipartFile file) {
	  
	  try {
		  
	  
	      HttpSession session = request.getSession();
	      Employee emp = (Employee) session.getAttribute("employee");
	
	      LeaveObject obj = new LeaveObject();
	      obj.setEid(context.getEId());
	      obj.setName(context.getName());
	      obj.setLeavetype(leavetype);
	      obj.setFromdate(fromdate);
	      obj.setTodate(todate);
	      obj.setReason(reason);
	      obj.setDuration(duration);
	    
	      
	      
	     String st = employeeService.applyleave(file, obj);

	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("employee/leaverequest");
	     mv.addObject("message", "Leave Applied Successfully");
	
	      return mv; // Return your ModelAndView or redirect as needed.
	  }catch (Exception e) {
		  
		  ModelAndView mv = new ModelAndView();
		     mv.setViewName("employee/leaverequest");
		     mv.addObject("message", "Something Went Wrong,Try Again!");
		return mv;
	}
  }


  @GetMapping("empleavehistory")
  public ModelAndView empleavehistory(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  Employee emp = (Employee) session.getAttribute("employee");
	  List<Object[]> li = employeeService.leavehistory(emp.getEid());
	  ModelAndView mv = new ModelAndView();
	  mv.addObject("object", li);
	  mv.setViewName("employee/empleavehistory");
	  return mv;

  }
  
  
  @GetMapping("profile")
  public ModelAndView employeeprofile(HttpServletRequest request) throws IOException
  {
	  HttpSession session = request.getSession();
	  
	  ModelAndView mv = new ModelAndView();
	  Employee emp = (Employee) session.getAttribute("employee");
		String  s=employeeService.profileRetrive("32410");
		int index = s.indexOf("\\uploads");
		if (index != -1) {
		    String result = s.substring(index);  // Extract from \\uploads to the end of the string
		    mv.addObject("img",".."+result);
		} 
	  	  mv.setViewName("employee/userprofile");
	  mv.addObject("emp", emp);
	  return mv;
  }
  
  
  
  @GetMapping("emplogout")
  public ModelAndView emplogout(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  session.invalidate();
	  context.setEId(null);
	  context.setName(null);
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("login");
	  return mv;
	}
  
  
  
  @GetMapping("authorityleaverequests")
  public ModelAndView displayleaverequests(HttpServletRequest request) {
	  HttpSession session = request.getSession();
	  Employee emp = (Employee) session.getAttribute("employee");
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("authority/leaverequests");
	  List<Object[]> li = employeeService.leaverequests();
	  mv.addObject("object", li);
	  return mv;
  }
  
  
  @GetMapping("employeelist")
  public ModelAndView employeelist() {
	  List<Employee> li = adminService.totalEmployees();
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("admin/employeelist");
	  mv.addObject("employee", li);
	  return mv;
  }
  @PostMapping("/upload")
  public ModelAndView up(@RequestPart("profilePicture") MultipartFile file, HttpServletRequest request)
  {
	  ModelAndView mv = new ModelAndView();
      String s1 = employeeService.ProfilePic(context.getEId(), file);

	  HttpSession session = request.getSession();
	  
	  Employee emp = (Employee) session.getAttribute("employee");
	  
	  
 
	  mv.setViewName("employee/userprofile");
	  mv.addObject("emp", emp);

      mv.addObject("msg","uploaded sucessuffuly");
      return mv;
  }
 
  @GetMapping("see")
  public ModelAndView see()
  {
	  try {
		String  s=employeeService.profileRetrive(context.getEId());
		
		ModelAndView mv = new ModelAndView("employee/img");
		
		int index = s.indexOf("\\uploads");
		if (index != -1) {
		    String result = s.substring(index);  // Extract from \\uploads to the end of the string
		    mv.addObject("img",".."+result);
		} 
		
		 
		  return mv;
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return null;
  }
  

  
}