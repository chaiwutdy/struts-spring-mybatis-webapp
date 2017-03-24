package com.action;

import java.util.List;

import com.dao.TNdcreceivedMapper;
import com.dao.TNdcreceivedMapperExt;
import com.model.TNdcreceived;
import com.opensymphony.xwork2.ActionSupport;

public class StrutsAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7148924263567727627L;
	private String firstName;
  private String lastName;
  private String location;	
  private TNdcreceivedMapper tNdcreceivedMapper;	
  private TNdcreceivedMapperExt tNdcreceivedMapperExt;
  private List<TNdcreceived> mytNdcreceiveds;
    
	public void settNdcreceivedMapperExt(TNdcreceivedMapperExt tNdcreceivedMapperExt) {
			this.tNdcreceivedMapperExt = tNdcreceivedMapperExt;
		}

	

	public void settNdcreceivedMapper(TNdcreceivedMapper tNdcreceivedMapper) {
		this.tNdcreceivedMapper = tNdcreceivedMapper;
	}

	public String execute() throws Exception{
		TNdcreceived t = tNdcreceivedMapper.selectByPrimaryKey("4608fef7-18b2-4c52-89e9-170111084016");	
		System.out.println(t);
    return "welcome";
  }
	
	public String getTodayTest() throws Exception{
		return "todayTest";
	}
	
	public String getTodayTestData() throws Exception{
		mytNdcreceiveds = tNdcreceivedMapperExt.selectByExample();
		return SUCCESS;
	}
	/*
	public String getPage() {
		return "1";
	}

	public int getTotal() {
		return 2;
	}

	public String getRecords() {
		return "13";
	}
	*/
    
	public String getFirstName() {
		return firstName;	
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public List<TNdcreceived> getMytNdcreceiveds() {
		return mytNdcreceiveds;
	}
	public void setMytNdcreceiveds(List<TNdcreceived> mytNdcreceiveds) {
		this.mytNdcreceiveds = mytNdcreceiveds;
	}
}
