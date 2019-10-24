package com.ss.HRServer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ss.HRServer.entity.Employee;
import com.ss.HRServer.repository.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeRepository employeeRepository;
	
	public boolean addEmployee(Employee e) {
		try {
			employeeRepository.save(e);
			return true;
		}catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}
	
	public List<Employee> getEmployees(){
		return employeeRepository.findAll();
	}
}
