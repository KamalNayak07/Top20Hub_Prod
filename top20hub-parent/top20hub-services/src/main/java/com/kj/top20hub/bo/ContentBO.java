package com.kj.top20hub.bo;

import java.util.List;

import com.kj.top20hub.dto.Content;

public interface ContentBO {

	public List<Content> getAllContent();

	public Content getContent(int id);
	public List<Content> getContentbyField(int id);
	public List<Content> getContentbyTopic(int id);
	public List<Content> getContentbyUser(int id);

	public int createContent(Content content);

	void updateContent(Content content);

	public Content deleteContent(int id);

}
