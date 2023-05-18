package com.crud.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.crud.dao.MyInMemoryRepo;
import com.crud.pojo.Employee;

@Controller
public class MyController {
	private final String STATUS = "status";

	@Autowired
	private MyInMemoryRepo repo;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/add")
	public String add() {
		return "add";
	}

	@GetMapping("/update")
	public String update() {
		return "update";
	}

	@GetMapping("/delete")
	public String delete() {
		return "delete";
	}
	@GetMapping("/search")
	public String search() {
		return "search";
	}

	@PostMapping("/add")
	public String add(HttpServletRequest request, @ModelAttribute Employee employee) {
		request.setAttribute(STATUS, repo.add(employee));
		return "add";
	}
	
	@PostMapping("/update")
	public String update(HttpServletRequest request, @ModelAttribute Employee employee) {
		request.setAttribute(STATUS, repo.update(employee));
		return "update";
	}
	
	@PostMapping("/delete")
	public String delete(HttpServletRequest request, @RequestParam Integer emp_ID) {
		request.setAttribute(STATUS, repo.delete(emp_ID));
		return "delete";
	}
	
	@PostMapping("/search")
	public String search(HttpServletRequest request, @RequestParam Integer emp_ID) {
		request.setAttribute(STATUS, repo.search(emp_ID));
		return "search";
	}
	
	@GetMapping("/getAll")
	public String getAll(HttpServletRequest request) {
		request.setAttribute(STATUS, repo.getAll());
		return "getAll";
	}
	
}
