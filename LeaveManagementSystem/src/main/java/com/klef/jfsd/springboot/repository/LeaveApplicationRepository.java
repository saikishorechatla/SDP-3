package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.LeaveApplication;

public interface LeaveApplicationRepository extends JpaRepository<LeaveApplication, Integer>
{
	@Query("select leave.eid,leave.name,leave.leavetype,leave.fromdate,leave.todate,leave.reason,leave.duration,leave.status from LeaveApplication leave where eid=?1")
	 public List<Object[]> leavehistory(String id);
	 
	 @Query("select count(*) from LeaveApplication where eid=?1")
	 public int countofrequests(String eid);
	 
	 @Query("select leave.eid,leave.name,leave.leavetype,leave.fromdate,leave.todate,leave.reason,leave.duration,leave.status from LeaveApplication leave")
	 public List<Object[]> leaverequests();
	 
}
