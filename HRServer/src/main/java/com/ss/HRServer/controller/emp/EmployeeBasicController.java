package com.ss.HRServer.controller.emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ss.HRServer.entity.Employee;
import com.ss.HRServer.service.EmployeeService;

@RestController
@RequestMapping("/employee/basic")
public class EmployeeBasicController {
	@Autowired
	EmployeeService employeeService;
	
	
	@GetMapping("/getEmployees")
	public List<Employee> getEmployees(){
		return employeeService.getEmployees();
	}
	
	
	@PostMapping("/addEmployee")
	public ResponseEntity<String> addEmployee(@RequestBody Employee e){
		ResponseEntity<String> responseEntity;
		
		if(employeeService.addEmployee(e)) {
			responseEntity = new ResponseEntity<String>("Add Employee Sucessfully", HttpStatus.OK);
		}
		else {
			responseEntity = new ResponseEntity<String>("Fail to add employee", HttpStatus.BAD_REQUEST);
		}
		return responseEntity;
	}
	
	
}
