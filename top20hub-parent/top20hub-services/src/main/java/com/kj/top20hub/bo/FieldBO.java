package com.kj.top20hub.bo;

import java.util.List;

import com.kj.top20hub.dto.Field;


public interface FieldBO {

	public List<Field> getAllFields();

	public Field getField(int id);

	public int createField(Field field);

	void updateField(Field field);

	public void deleteField(int id);

}
