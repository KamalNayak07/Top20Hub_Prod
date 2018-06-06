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
import com.kj.top20hub.bo.TopicBO;
import com.kj.top20hub.dto.Topic;

@RestController
@RequestMapping("/topic")
public class TopicController {

	private static String TEMP_FOLDER = "C:\\Users\\js185506\\Desktop\\t20code\\Top20Hub_Prod\\top20hub-parent\\top20hub-web\\src\\main\\webapp\\Resources\\img\\topic\\";
		
	@Autowired
	TopicBO topicService;
	
	@GetMapping("/")
	public List<Topic> getAllTopics()
	{
		List<Topic> AllTopicsList = topicService.getAllTopics();
		if(AllTopicsList.size()==0)
		{
		 	throw new UserNotFoundException("No topic available");
		}		
		return AllTopicsList;
	}

	@GetMapping("/getAllTopicsbyFieldId/{field_id}")
	public List<Topic> getAllTopicsbyFieldId(@PathVariable int field_id)
	{
		List<Topic> AllTopicsListbyfieldId = topicService.getAllTopicsbyFieldId(field_id);
		if(AllTopicsListbyfieldId.size()==0)
		{
		 	throw new UserNotFoundException("No topic available by field id");
		}		
		return AllTopicsListbyfieldId;
	}
	
	@GetMapping("/getAllTopicsbyInsertedOn/")
	public List<Topic> getAllTopicsbyInsertedOn()
	{
		List<Topic> AllTopicsListbyInsertedOn = topicService.getAllTopicsbyInsertedOn();
		if(AllTopicsListbyInsertedOn.size()==0)
		{
		 	throw new UserNotFoundException("No topic available by Inserted On");
		}		
		return AllTopicsListbyInsertedOn;
	}
	
	@GetMapping("/getAllTopicsbyRating/")
	public List<Topic> getAllTopicsbyRating()
	{
		List<Topic> AllTopicsListbyRating = topicService.getAllTopicsbyRating();
		if(AllTopicsListbyRating.size()==0)
		{
		 	throw new UserNotFoundException("No topic available by Rating");
		}		
		return AllTopicsListbyRating;
	}
	
	
	
	@GetMapping("/{id}")
	public Topic getTopic(@PathVariable int id)
	{		
		Topic topic = topicService.getTopic(id);
		if(topic==null)
		{
			throw new UserNotFoundException("topic not found : "+ id);
		}
		return topic;
	}	
	
	@PostMapping("/")
	public ResponseEntity<Object> createTopic(@RequestBody Topic topic)
	{		
		int result = topicService.createTopic(topic);
		URI location =  ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();		
	}

	@PostMapping("/topicImage") 
	public Object saveUserDataAndFile(@RequestParam(value = "file") MultipartFile file,
		                              HttpServletRequest request) {
		
	//	String root = request.getSession().getServletContext().getRealPath("/");
	//	System.out.println("root:" + root);
		
		String pathDirectory = "Resources\\img\\topic\\";
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
	
    
    /*@PostMapping("/topic")
	public ResponseEntity<Object> createTopic(@RequestBody Topic topic)
	{
		int result = topicService.createTopic(topic);
		URI location =  ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();		
	}*/
	
	@PutMapping("/updateTopic")
	public void updateTopic(@RequestBody Topic topic)
	{
		topicService.updateTopic(topic);
	}
	
	
	@DeleteMapping("/deleteTopic/{id}")
	public void deleteTopic(@PathVariable int id)
	{
		topicService.deleteTopic(id);
	}
	
}	
	
