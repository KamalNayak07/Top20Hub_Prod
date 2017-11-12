package com.kj.top20hub.web.controller;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kj.top20hub.Exception.UserNotFoundException;
import com.kj.top20hub.bo.FieldBO;
import com.kj.top20hub.dto.Field;
import com.kj.top20hub.dto.Topic;

@RestController
@RequestMapping("/field")
public class FieldController {

	private static String TEMP_FOLDER = "/Users/kamalnayak/Documents/Top20Hub/top20hub_code/Top20Hub_Prod/top20hub-parent/top20hub-web/src/main/webapp/Resources/img/field/";
		
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

	@PostMapping("/fieldImage") 
	public Object saveUserDataAndFile(@RequestParam(value = "file") MultipartFile file,
		                              HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("/");
		System.out.println("root:" + root);
		
		String pathDirectory = "Resources\\img\\field\\";
		try {
		  // local folder for testing file upload  	
			file.transferTo(new File(TEMP_FOLDER + file.getOriginalFilename()));
		  // specfic location as per project   
		  // file.transferTo(new File(root + pathDirectory + file.getOriginalFilename()));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}		
		return null;
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
	
