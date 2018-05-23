package com.kj.top20hub.dao;

import java.util.HashMap;
import java.util.List;

import com.kj.top20hub.dto.Field;
import com.kj.top20hub.dto.Topic;

public interface FieldDAO {

	public List<Field> getAllFields();
	
	public List<Object[]> getAllFieldsbyCount();
	
	public Field getField(int id);
	
	public int createField(Field field);

	public void updateField(Field field);

	public void deleteField(int id);
	
	
}
