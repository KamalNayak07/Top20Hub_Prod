package com.kj.top20hub.dao;

import java.util.List;

import com.kj.top20hub.dto.Field;

public interface FieldDAO {

	public List<Field> getAllfield();
	
	public Field getField(int id);
	
	public int createField(Field field);

	public void updateField(Field field);

	public Field deleteField(int id);
	
}
