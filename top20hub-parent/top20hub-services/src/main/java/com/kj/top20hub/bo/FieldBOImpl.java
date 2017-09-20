package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.FieldDAO;
import com.kj.top20hub.dto.Field;
import com.kj.top20hub.dto.Topic;

@Service
public class FieldBOImpl implements FieldBO {

	@Autowired
	private FieldDAO fielddao;
	
	@Override
	@Transactional
	public List<Field> getAllFields() {
		return fielddao.getAllFields();
	}

	@Override
	@Transactional
	public Field getField(int id) {
		return fielddao.getField(id);
	}

	@Override
	@Transactional
	public int createField(Field field) {
		return fielddao.createField(field);
	}

	@Override
	@Transactional
	public void updateField(Field field) {
	    fielddao.updateField(field);
	}

	@Override
	@Transactional
	public void deleteField(int id) {
		fielddao.deleteField(id);
	}

	@Override
	@Transactional
	public int createTopic(Topic topic) {
		return fielddao.createTopic(topic);
	}

}
