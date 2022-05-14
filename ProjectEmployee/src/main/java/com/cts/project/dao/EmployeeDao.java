package com.cts.project.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.cts.project.model.Employee;
@Component
public class EmployeeDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public List<Employee> getAllEmployee() {
		return jdbcTemplate.query("select * from employee", new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	
	public List<Employee> getAllEmployeeById(int id) {
		String sql = "select * from employee where id =" + id;
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	
	public List<Employee> getEmployeeHighestSal() {
		return jdbcTemplate.query("SELECT * FROM employee WHERE  sal = (SELECT MAX(sal) FROM employee)", new BeanPropertyRowMapper<Employee>(Employee.class));
	}
	
	public List<Employee> getEmployeeLowestSal() {
		return jdbcTemplate.query("SELECT * FROM employee WHERE  sal = (SELECT MIN(sal) FROM employee)", new BeanPropertyRowMapper<Employee>(Employee.class));
	}
}

