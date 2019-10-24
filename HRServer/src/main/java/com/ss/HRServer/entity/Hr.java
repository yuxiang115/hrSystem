package com.ss.HRServer.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "hr")
@JsonIgnoreProperties({"operations", "sysMessages", "receiver"})
public class Hr {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column
	private String firstName;
	
	@Column
	private String lastName;
	
	@Column
	private String mobilePhone;
	
	@Column
	private String homePhone;
	
	@OneToOne
	@JoinColumn(name = "address_id")
	private Address address;
	
	@Column(nullable = false, columnDefinition = "TINYINT", length = 1)
	private boolean enabled;
	
	@Column
	private String username;
	
	@Column
	private String password;
	
	@Column
	private String userface;
	
	@Column
	private String remark;
	
	@ManyToMany
	@JoinTable(
			name = "hr_role",
			joinColumns = @JoinColumn(name = "hr_id"),
			inverseJoinColumns = @JoinColumn(name = "role_id")
			)
	private Set<Role> roles;
	
	@OneToMany(mappedBy = "operator")
	private Set<OperationLog> operations;
	
	@OneToMany(mappedBy = "receiver")
	private Set<SysMessage> sysMessages;

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

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserface() {
		return userface;
	}

	public void setUserface(String userface) {
		this.userface = userface;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Set<OperationLog> getOperations() {
		return operations;
	}

	public void setOperations(Set<OperationLog> operations) {
		this.operations = operations;
	}

	public Set<SysMessage> getSysMessages() {
		return sysMessages;
	}

	public void setSysMessages(Set<SysMessage> sysMessages) {
		this.sysMessages = sysMessages;
	}
	
	
}
