package com.kj.top20hub.bo;

import java.util.List;

import com.kj.top20hub.dto.Field;

public interface FieldBO {

	public List<Field> getAllField();

	public Field getField(int id);
	
	public int createField(Field field);

	public void updateField(Field field);

	public Field deleteField(int id);
}
