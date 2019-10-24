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
@Table(name = "employee_remove")
public class EmployeeRemove {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "emp_id")
	private Employee employee;
	
	@Column
	private Long afterDepId;
	
	@Column
	private Long afterJobId;
	
	@Column
	private Date removeDate;
	
	@Column
	private String reason;
	
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

	public Long getAfterDepId() {
		return afterDepId;
	}

	public void setAfterDepId(Long afterDepId) {
		this.afterDepId = afterDepId;
	}

	public Long getAfterJobId() {
		return afterJobId;
	}

	public void setAfterJobId(Long afterJobId) {
		this.afterJobId = afterJobId;
	}

	public Date getRemoveDate() {
		return removeDate;
	}

	public void setRemoveDate(Date removeDate) {
		this.removeDate = removeDate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
