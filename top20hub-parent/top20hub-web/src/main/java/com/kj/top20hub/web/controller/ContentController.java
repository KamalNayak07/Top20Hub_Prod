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
import com.kj.top20hub.bo.ContentBO;
import com.kj.top20hub.dto.Content;
import com.kj.top20hub.dto.User;

@RestController
@RequestMapping("/content")
public class ContentController {

	@Autowired
	private ContentBO contentbo;

	@GetMapping(value = "/")
	public List<Content> getListContent() {
		List<Content> listOfContent = contentbo.getAllContent();
		return listOfContent;
	}

	
	@GetMapping(value = "/{id}")
	public Content getContent(@PathVariable int id) {
		Content content = contentbo.getContent(id);
		if (content == null) {
			throw new UserNotFoundException("Content Not Found by ContentID: " + id);
		}
		return content;
	}
	
	
	@GetMapping(value = "byField/{id}")
	public List<Content> getContentbyField(@PathVariable int id) {
		List<Content> listOfContent = contentbo.getContentbyField(id);
		if (listOfContent.size()==0) {
			throw new UserNotFoundException("No Content For this Field:" + id);
		}
		return listOfContent;
	}
	
	@GetMapping(value = "byTopic/{id}")
	public List<Content> getContentbyTopic(@PathVariable int id) {
		List<Content> listOfContent = contentbo.getContentbyTopic(id);
		if (listOfContent.size()==0) {
			throw new UserNotFoundException("No Content For this Topic:" + id);
		}
		return listOfContent;
	}
		
	@GetMapping(value = "byUser/{id}")
	public List<Content> getContentbyUser(@PathVariable int id) {
		List<Content> listOfContent = contentbo.getContentbyUser(id);
		if (listOfContent.size()==0) {
			throw new UserNotFoundException("No Content For this User:" + id);
		}
		return listOfContent;
	}
	
	@PostMapping(value="/")
	public ResponseEntity<Object> createContent(@RequestBody Content content)
	{
		int result = contentbo.createContent(content);
		URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();		
	}

		
	@DeleteMapping(value = "/deleteContent/{id}")
	public void deleteContent(@PathVariable int id) {
		Content content = contentbo.deleteContent(id);
		if (content == null) {
			throw new UserNotFoundException("Content does not exist: " + id);
		}
	}
	
	@PutMapping(value = "/updateContent")
	public void updateContent(@RequestBody Content content) {
	//	int content_id = content.getContent_id();
		contentbo.updateContent(content);
	}

}
