package com.ss.HRServer.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "salary")
@JsonIgnoreProperties({"employee"})
public class Salary {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column
	private Integer basicSalary;
	
	@Column
	private Integer bouns;
	
	@Column
	private Integer lunchAllowance;
	
	@Column
	private Integer trafficAllowance;
	
	@Column
	private Integer pensionBase;
	
	@Column
	private Float pensionRate;
	
	@Column
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate;
	
	@Column
	private Integer medicalBase;
	
	@Column
	private Float medicalRate;
	
	@Column
	private Integer accumulationFundBase;
	
	@Column
	private Integer accumulationFundRate;
	
	@Column
	private String name;

	@OneToOne(mappedBy = "salary")
	private Employee employee;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Integer getBasicSalary() {
		return basicSalary;
	}

	public void setBasicSalary(Integer basicSalary) {
		this.basicSalary = basicSalary;
	}

	public Integer getBouns() {
		return bouns;
	}

	public void setBouns(Integer bouns) {
		this.bouns = bouns;
	}

	public Integer getLunchAllowance() {
		return lunchAllowance;
	}

	public void setLunchAllowance(Integer lunchAllowance) {
		this.lunchAllowance = lunchAllowance;
	}

	public Integer getTrafficAllowance() {
		return trafficAllowance;
	}

	public void setTrafficAllowance(Integer trafficAllowance) {
		this.trafficAllowance = trafficAllowance;
	}

	public Integer getPensionBase() {
		return pensionBase;
	}

	public void setPensionBase(Integer pensionBase) {
		this.pensionBase = pensionBase;
	}

	public Float getPensionRate() {
		return pensionRate;
	}

	public void setPensionRate(Float pensionRate) {
		this.pensionRate = pensionRate;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getMedicalBase() {
		return medicalBase;
	}

	public void setMedicalBase(Integer medicalBase) {
		this.medicalBase = medicalBase;
	}

	public Float getMedicalRate() {
		return medicalRate;
	}

	public void setMedicalRate(Float medicalRate) {
		this.medicalRate = medicalRate;
	}

	public Integer getAccumulationFundBase() {
		return accumulationFundBase;
	}

	public void setAccumulationFundBase(Integer accumulationFundBase) {
		this.accumulationFundBase = accumulationFundBase;
	}

	public Integer getAccumulationFundRate() {
		return accumulationFundRate;
	}

	public void setAccumulationFundRate(Integer accumulationFundRate) {
		this.accumulationFundRate = accumulationFundRate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
	
}
