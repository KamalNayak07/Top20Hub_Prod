package com.kj.top20hub.web.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

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
	
	@PostMapping("/")
	public ResponseEntity<Object> createField(@RequestBody Field field)
	{
		int result = fieldService.createField(field);
		URI location =  ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();
		
	}
	
}
