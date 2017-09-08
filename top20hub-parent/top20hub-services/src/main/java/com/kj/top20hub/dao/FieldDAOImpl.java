package com.kj.top20hub.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kj.top20hub.dto.Field;


@Repository
public class FieldDAOImpl implements FieldDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Field> getAllfield() {

		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Query<Field> query = currentSession.createQuery("from Field", Field.class);
		List<Field> result = query.getResultList();
		return result;
	}

	@Override
	public Field getField(int id) {

		Session curSession = null;
		curSession = sessionFactory.getCurrentSession();
		Field field = curSession.get(Field.class, id);
		return field;
	}

	@Override
	public int createField(Field field) {
		Session curSession = null;
		curSession = sessionFactory.getCurrentSession();
		int result = (int) curSession.save(field);
		return result;
	}

	@Override
	public void updateField(Field field) {
		Session curSession = null;
		curSession = sessionFactory.getCurrentSession();
		curSession.update(field);
	}

	@Override
	public Field deleteField(int id) {
		Session curSession = null;
		curSession = sessionFactory.getCurrentSession();
		Field field = curSession.get(Field.class, id);
		curSession.delete(field);
		return field;
	}

}
