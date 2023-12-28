package com.klef.jfsd.springboot.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.model.LeaveApplication;
import com.klef.jfsd.springboot.model.Profile;
import com.klef.jfsd.springboot.repository.EmployeeRepository;
import com.klef.jfsd.springboot.repository.LeaveApplicationRepository;
import com.klef.jfsd.springboot.repository.ProfileRepository;
import com.klef.jfsd.springboot.util.FileUtils;
import com.klef.jfsd.springboot.util.LeaveObject;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private ProfileRepository profileRepository;
	
	
	@Autowired
	private LeaveApplicationRepository leaveApplicationRepository;

	@Override
	public Employee checkemplogin(int id, String password) {
		String  k = ""+id;
		return employeeRepository.checkemplogin(k, password);
	}


	
	
	public String applyleave(MultipartFile file , LeaveObject leave) {

		LeaveApplication leaveapp = new LeaveApplication();
		
		try {
			leaveapp.setEid(leave.getEid());
			leaveapp.setName(leave.getName());
			leaveapp.setLeavetype(leave.getLeavetype());
			leaveapp.setFromdate(leave.getFromdate());
			leaveapp.setTodate(leave.getTodate());
			leaveapp.setReason(leave.getReason());
			leaveapp.setDuration(leave.getDuration());
			leaveapp.setStatus("pending");
			if(leave.getLeavetype().compareTo("casualleave")==0||leave.getLeavetype().compareTo("specialcasualleave")==0||leave.getLeavetype().compareTo("onduty")==0)
			{
				leaveapp.setStatus1("pending");
				leaveapp.setStatus2("accepted");
				leaveapp.setStatus3("accepted");
			}
			else if(leave.getLeavetype().compareTo("maternityleave")==0||leave.getLeavetype().compareTo("paternityleave")==0||leave.getLeavetype().compareTo("hospitalleave")==0)
				
			{
				leaveapp.setStatus1("pending");
				leaveapp.setStatus2("pending");
				leaveapp.setStatus3("accepted");
			}
			else
			{
				leaveapp.setStatus1("pending");
				leaveapp.setStatus2("pending");
				leaveapp.setStatus3("pending");
			}
			
			leaveapp.setLeaveletter(FileUtils.compressImage(file.getBytes()));
			System.out.println("hi");

			LeaveApplication f=    leaveApplicationRepository.save(leaveapp);
			System.out.println(f.toString());
			return "Applied leave Successfully";
		}catch (Exception e) {
			return "Something Went wrong Please Try Again";
		}
		
    }

	@Override
	public List<Object[]> leavehistory(String id) {
		
		return leaveApplicationRepository.leavehistory(id);
	}

	@Override
	public Employee findEmployeeById(String id) {
		
		return employeeRepository.findEmployeeById(id);
	}

	@Override
	public int countorequest(String eid) {
		return leaveApplicationRepository.countofrequests(eid);
	}

	@Override
	public List<Object[]> leaverequests() {
		
		return leaveApplicationRepository.leaverequests();
	}
	
	
	public String ProfilePic(String eid,MultipartFile file)  {
        String filePath="D:\\JFSD\\SDPWORKSPACE\\LeaveManagementSystem\\src\\main\\webapp\\uploads\\"+file.getOriginalFilename();
        Profile p = new Profile();
          p.setEid(eid);
          p.setImage(filePath);
          try
          {
        	  
        	  file.transferTo(new File(filePath));
          }catch (Exception e) {
			System.out.println("error");
		}
        Profile fileData = profileRepository.save(p);
        

        if (fileData != null) {
            return "file uploaded successfully : " + filePath;
        }
        return null;
    }
	
	
	public String profileRetrive(String eid) throws IOException {
        Profile fileData =profileRepository.find(eid);
        String filePath=(String)fileData.getImage();
        byte[] images = Files.readAllBytes(new File(filePath).toPath());
        return filePath;
    }

	
	

}
