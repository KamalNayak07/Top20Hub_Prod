package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.FieldDAO;
import com.kj.top20hub.dto.Field;

@Service
public class FieldBOImpl implements FieldBO {

	@Autowired
	FieldDAO fieldDao;
	
	@Override
	@Transactional
	public List<Field> getAllField() {
		return fieldDao.getAllfield();
	}

	@Override
	public Field getField(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public int createField(Field field) {
		return fieldDao.createField(field);
	}

	@Override
	public void updateField(Field field) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Field deleteField(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
}
