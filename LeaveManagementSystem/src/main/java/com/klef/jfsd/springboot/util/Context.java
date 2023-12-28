package com.klef.jfsd.springboot.util;

public class Context {
	private String eid;
	private String name;
	
	public String body(String name ,String eid, String password) {
		String body="Hello! "+name+",\r\n"
	
			+ "\r\n"
			+ "We are delighted to welcome you to Company. Your journey with us has just begun, and we are excited to have you as part of our team."
			+ "  employee id :"+eid+" ,password : "+password+"  please update the password after login in your profile " ;
		return body;
}
	          
	
	public String getEId() {
		return eid;
	}
	public void setEId(String id) {
		this.eid = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
