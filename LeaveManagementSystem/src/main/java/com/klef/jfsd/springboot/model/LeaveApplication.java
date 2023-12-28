package com.klef.jfsd.springboot.model;

import java.util.Arrays;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;


@Entity
@Table(name="leaveapplication_table")

public class LeaveApplication {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "employee_id" ,nullable = false)
	private String eid;
	@Column(name = "employee_name" , nullable = false)
	private String name;
	
	@Column(name = "leavetype" , nullable = false)
	private String leavetype;
	
	@Column(name = "fromdate" , nullable = false)
	private String fromdate;
	
	@Column(name = "todate" , nullable = false)
	private String todate;
	
	@Column(name = "leave_reason" , nullable = false)
	private String reason;
	
	@Column(name = "leave_duration" , nullable = false)
	private String duration;
	
	@Column(name = "leave_letter",columnDefinition = "MEDIUMBLOB" )
	@Lob
	private byte[] leaveletter;
	
	@Column(name = "leave_status")
	private String status ;

	@Column(name = "status1")
	private String status1 ;

	public String getStatus1() {
		return status1;
	}

	public void setStatus1(String status1) {
		this.status1 = status1;
	}

	public String getStatus2() {
		return status2;
	}

	public void setStatus2(String status2) {
		this.status2 = status2;
	}

	public String getStatus3() {
		return status3;
	}

	public void setStatus3(String status3) {
		this.status3 = status3;
	}

	@Column(name = "status2")
	private String status2 ;

	@Column(name = "status3")
	private String status3 ;
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

	public byte[] getLeaveletter() {
		return leaveletter;
	}

	public void setLeaveletter(byte[] leaveletter) {
		this.leaveletter = leaveletter;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLeavetype() {
		return leavetype;
	}

	public void setLeavetype(String leavetype) {
		this.leavetype = leavetype;
	}

	public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getTodate() {
		return todate;
	}

	public void setTodate(String todate) {
		this.todate = todate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	@Override
	public String toString() {
		return "LeaveApplication [id=" + id + ", eid=" + eid + ", name=" + name + ", leavetype=" + leavetype
				+ ", fromdate=" + fromdate + ", todate=" + todate + ", reason=" + reason + ", duration=" + duration
				+ ", leaveletter=" + Arrays.toString(leaveletter) + ", status=" + status + ", status1=" + status1
				+ ", status2=" + status2 + ", status3=" + status3 + "]";
	}
	
	
	
	
}
