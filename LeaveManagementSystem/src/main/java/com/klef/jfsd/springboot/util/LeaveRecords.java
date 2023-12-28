package com.klef.jfsd.springboot.util;

public class LeaveRecords {
	
private String eid;
	
	private String name;
	

	private String leavetype;
	
	private String fromdate;
	

	private String todate;
	
	
	private String reason;
	
	
	private String duration;
	
	private String status;

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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "LeaveRecords [eid=" + eid + ", name=" + name + ", leavetype=" + leavetype + ", fromdate=" + fromdate
				+ ", todate=" + todate + ", reason=" + reason + ", duration=" + duration + ", status=" + status + "]";
	}

}
