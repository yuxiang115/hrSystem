package com.ss.HRServer.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "employee_bouns_penalty")
public class EmployeeBounsPenalty {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;
	
	@Column
	//bounsPenalty date
	private Date bpDate;
	
	@Column
	private String bpReason;
	
	@Column
	private Integer bpPoint;
	
	@Column
	private Integer bpType; //0: bouns, 1: penalty
	
	@Column
	private String remark;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Date getBpDate() {
		return bpDate;
	}

	public void setBpDate(Date bpDate) {
		this.bpDate = bpDate;
	}

	public String getBpReason() {
		return bpReason;
	}

	public void setBpReason(String bpReason) {
		this.bpReason = bpReason;
	}

	public Integer getBpPoint() {
		return bpPoint;
	}

	public void setBpPoint(Integer bpPoint) {
		this.bpPoint = bpPoint;
	}

	public Integer getBpType() {
		return bpType;
	}

	public void setBpType(Integer bpType) {
		this.bpType = bpType;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
