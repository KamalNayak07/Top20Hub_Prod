package com.kj.top20hub.web.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.kj.top20hub.Exception.UserNotFoundException;
import com.kj.top20hub.bo.FieldBO;
import com.kj.top20hub.dto.Field;
import com.kj.top20hub.dto.Topic;

@RestController
@RequestMapping("/field")
public class FieldController {

	@Autowired
	FieldBO fieldService;
	
	@GetMapping("/")
	public List<Field> getAllFields()
	{
		List<Field> AllFieldsList = fieldService.getAllFields();
		if(AllFieldsList.size()==0)
		{
			throw new UserNotFoundException("No field available");
		}		
		return AllFieldsList;
	}
	
	
	@GetMapping("/{id}")
	public Field getField(@PathVariable int id)
	{		
		Field field = fieldService.getField(id);
		if(field==null)
		{
			throw new UserNotFoundException("field not found : "+ id);
		}
		return field;
	}
	
	
	@PostMapping("/")
	public ResponseEntity<Object> createField(@RequestBody Field field)
	{
		int result = fieldService.createField(field);
		URI location =  ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();		
	}
	
	@PostMapping("/topic")
	public ResponseEntity<Object> createTopic(@RequestBody Topic topic)
	{
		int result = fieldService.createTopic(topic);
		URI location =  ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();		
	}
	
	@PutMapping("/updateField")
	public void updateField(@RequestBody Field field)
	{
		fieldService.updateField(field);
	}
	
	
	@DeleteMapping("/deleteField/{id}")
	public void deleteField(@PathVariable int id)
	{
		fieldService.deleteField(id);
	}
	
}	
	
