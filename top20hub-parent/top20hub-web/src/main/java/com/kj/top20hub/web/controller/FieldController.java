package com.kj.top20hub.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kj.top20hub.bo.FieldBO;
import com.kj.top20hub.dto.Field;

@RestController
@RequestMapping("/field")
public class FieldController {

	@Autowired
	FieldBO fieldService;
	
	@GetMapping("/")
	public List<Field> getAllField()
	{
		return fieldService.getAllField();
	}
	
	
}
