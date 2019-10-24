package com.ss.HRServer.entity;

import java.sql.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "employee")
@JsonIgnoreProperties({"employeeBounsPenalties", "employeeRemoves", "employeeTrains"})
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;	
	@Column
	private String firstName;	
	@Column
	private String lastName;
	@Column
	private String gender;
	@Column
	private Date birthday;
	@Column
	private String idCard;
	@Column
	private String maritalStatus;
	@Column
	private String email;
	@Column
	private String phone;
	@OneToOne
	@JoinColumn(name = "address_id")
	private Address address;
	@ManyToOne
	@JoinColumn(name = "department_id")
	private Department department;
	@ManyToOne
	@JoinColumn(name = "job_level_id")
	private JobLevel jobLevel;
	@ManyToOne
	@JoinColumn(name = "position_id")
	private Position position;
	@Column
	private String engageForm;
	@Column
	private String tiptopDegree;
	@Column
	private String major;
	@Column
	private String school;
	@Column
	private Date beginDate;
	@Column
	private String workId;
	@Column
	private Double contractTerm;
	@Column
	private Date conversionDate;
	@Column
	private Date leaveDate;
	@Column
	private Date beginContract;
	@Column
    private Date endContract;
	@Column
    private Integer workDuration;
    @OneToOne
    @JoinColumn(name = "salary_id")
    private Salary salary;
    
    @OneToMany(mappedBy = "employee")
    private Set<EmployeeBounsPenalty> employeeBounsPenalties;
    
    @OneToMany(mappedBy = "employee")
    private Set<EmployeeRemove> employeeRemoves;
    
    @OneToMany(mappedBy = "employee")
    private Set<EmployeeTrain> employeeTrains;
    
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public JobLevel getJobLevel() {
		return jobLevel;
	}
	public void setJobLevel(JobLevel jobLevel) {
		this.jobLevel = jobLevel;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public String getEngageForm() {
		return engageForm;
	}
	public void setEngageForm(String engageForm) {
		this.engageForm = engageForm;
	}
	public String getTiptopDegree() {
		return tiptopDegree;
	}
	public void setTiptopDegree(String tiptopDegree) {
		this.tiptopDegree = tiptopDegree;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public String getWorkId() {
		return workId;
	}
	public void setWorkId(String workId) {
		this.workId = workId;
	}
	public Double getContractTerm() {
		return contractTerm;
	}
	public void setContractTerm(Double contractTerm) {
		this.contractTerm = contractTerm;
	}
	public Date getConversionDate() {
		return conversionDate;
	}
	public void setConversionDate(Date conversionDate) {
		this.conversionDate = conversionDate;
	}
	public Date getLeaveDate() {
		return leaveDate;
	}
	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}
	public Date getBeginContract() {
		return beginContract;
	}
	public void setBeginContract(Date beginContract) {
		this.beginContract = beginContract;
	}
	public Date getEndContract() {
		return endContract;
	}
	public void setEndContract(Date endContract) {
		this.endContract = endContract;
	}
	public Integer getWorkDuration() {
		return workDuration;
	}
	public void setWorkDuration(Integer workDuration) {
		this.workDuration = workDuration;
	}
	public Salary getSalary() {
		return salary;
	}
	public void setSalary(Salary salary) {
		this.salary = salary;
	}
	public Set<EmployeeBounsPenalty> getEmployeeBounsPenalties() {
		return employeeBounsPenalties;
	}
	public void setEmployeeBounsPenalties(Set<EmployeeBounsPenalty> employeeBounsPenalties) {
		employeeBounsPenalties = this.employeeBounsPenalties;
	}
	public Set<EmployeeRemove> getEmployeeRemoves() {
		return employeeRemoves;
	}
	public void setEmployeeRemoves(Set<EmployeeRemove> employeeRemoves) {
		this.employeeRemoves = employeeRemoves;
	}
	public Set<EmployeeTrain> getEmployeeTrains() {
		return employeeTrains;
	}
	public void setEmployeeTrains(Set<EmployeeTrain> employeeTrains) {
		this.employeeTrains = employeeTrains;
	}
    
    
}
