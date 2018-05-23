package com.kj.top20hub.dao;

import java.util.List;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kj.top20hub.dto.Field;

@Repository
public class FieldDAOImpl implements FieldDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public List<Field> getAllFields() {
		Session currentSession = null;
		currentSession = sessionfactory.getCurrentSession();
		Query<Field> query = currentSession.createQuery("from Field",Field.class);
		List<Field> AllFieldsList = query.getResultList();
		return AllFieldsList;
	}

	@Override
	public Field getField(int id) {
		Session currentSession = null;
		currentSession = sessionfactory.getCurrentSession();
		Field field = currentSession.get(Field.class,id);
		return field;
	}

	@Override
	public int createField(Field field) {
		Session currentSession = null;
		currentSession =  sessionfactory.getCurrentSession();
		int result  = (int) currentSession.save(field);
		return result;
	}

	@Override
	public void updateField(Field field) {
		Session currentSession = null;
		currentSession =  sessionfactory.getCurrentSession();
		currentSession.update(field);
	}

	@Override
	public void deleteField(int id) {
		Session currentSession = null;
		currentSession =  sessionfactory.getCurrentSession();
		Field field = currentSession.load(Field.class,id);
		currentSession.delete(field);
	}

	@Override
	public List<Object[]> getAllFieldsbyCount() {
		Session currentSession = null;
		String hql = "select f.field_desc, count(ft) from Field f left join f.topic as ft group by f.field_id";
				
		currentSession =  sessionfactory.getCurrentSession();
		
		Query query = currentSession.createQuery(hql);

		List<Object[]> users= (List<Object[]>)query.getResultList();
		   
		for(Object[] user: users){
		 
	        String name = (String)user[0];
		 
		        System.out.println(name);
				Long id = (Long)user[1];
		 	 
		        System.out.println(id);
		 
		    }
		
		return users;		
	}
}
