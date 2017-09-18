package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.ContentDAO;
import com.kj.top20hub.dto.Content;

@Service
public class ContentBOImpl implements ContentBO {

	@Autowired
	private ContentDAO contentdao;

	@Override
	@Transactional
	public List<Content> getAllContent() {
		return contentdao.getAllContent();
	}

	@Override
	@Transactional
	public Content getContent(int id) {
		return contentdao.getContent(id);
	}

	@Override
	@Transactional
	public List<Content> getContentbyField(int id) {
		return contentdao.getContentbyField(id);
	}

	@Override
	@Transactional
	public List<Content> getContentbyTopic(int id) {
		return contentdao.getContentbyTopic(id);
	}

	@Override
	@Transactional
	public List<Content> getContentbyUser(int id) {
		return contentdao.getContentbyUser(id);
	}

	@Override
	@Transactional
	public int createContent(Content content) {
		return contentdao.createContent(content);
	}

	@Override
	@Transactional
	public void updateContent(Content content) {
		contentdao.updateContent(content);
	}

	@Override
	@Transactional
	public Content deleteContent(int id) {
		return contentdao.deleteContent(id);
	}

}
